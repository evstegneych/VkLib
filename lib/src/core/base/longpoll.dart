import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/event.dart';
import 'package:vklib/src/core/exception.dart';

abstract class BaseLongPoll {
  late JsonString _requests_query_params = {};
  late String _server_url;
  late final http.Client _requestsSession;

  BaseLongPoll(this._requestsSession);

  Future<void> _setup();

  Json _parseJsonBody(http.Response response) {
    return json.decode(response.body);
  }

  Stream<dynamic> baseRunPolling() async* {
    await _setup();
    while (true) {
      try {
        var _response = await _getNewRequest();
        Json response;
        if (_response.headers.containsKey('x-next-ts')) {
          _requests_query_params.update(
              'ts', (value) => _response.headers['x-next-ts']!);
          response = _parseJsonBody(_response);
        } else {
          response = _parseJsonBody(_response);
          await _resolveFailed(response);
          continue;
        }
        if (response['updates'] == null) {
          continue;
        }
        for (var update in response['updates']) {
          yield update;
        }
      } catch (err) {
        print('Please put this  in issue');
        rethrow;
      }

      await Future.delayed(Duration(milliseconds: 100));
    }
  }

  Future<void> _resolveFailed(Json response) async {
    if (response['failed'] == 1) {
      _requests_query_params.update('ts', (value) => response['ts']);
    } else if ([2, 3].contains(response['failed'])) {
      await _setup();
    } else {
      throw CoreException('Invalid longpoll version');
    }
  }

  Future<http.Response> _getNewRequest() {
    var url = Uri.parse(_server_url);
    return _requestsSession
        .get(Uri.https(url.authority, url.path, _requests_query_params));
  }

  void closeSession() {
    _requestsSession.close();
  }
}

class BaseGroupLongPoll extends BaseLongPoll {
  int? groupId;
  int? _wait;
  late API api;

  BaseGroupLongPoll({
    required this.api,
    int? group_id,
    int wait = 25,
  }) : super(api.clientSession) {
    groupId = group_id;
    _wait = wait;
  }

  @override
  Future<void> _setup() async {
    await _define_group_id();
    var new_lp_settings = await api.groups.getLongPollServer(group_id: groupId);
    var longPoll = new_lp_settings['response'];

    _server_url = '${longPoll["server"]}';

    _requests_query_params = {
      'act': 'a_check',
      'wait': _wait.toString(),
    };
    _requests_query_params
        .addAll(new_lp_settings['response'].cast<String, String>());
  }

  Future<void> _define_group_id() async {
    if (groupId == null) {
      var token_owner = await api.define_token_owner();
      if (token_owner != TokenOwner.GROUP) {
        throw CoreException(
            'Cant use `GroupLongPoll` with user token without `group_id`');
      }
      var owner = await api.groups.getById();
      groupId = owner['response'][0]['id'];
    }
  }

  Stream<GroupEvent> runPolling() async* {
    await for (var event in super.baseRunPolling()) {
      yield GroupEvent(event as Json);
    }
  }
}

class BaseUserLongPoll extends BaseLongPoll {
  late int _mode;
  late int _version;
  late int _wait;
  late API _api;

  BaseUserLongPoll({
    required API api,
    int version = 3,
    int mode = 234,
    int wait = 25,
  }) : super(api.clientSession) {
    _version = version;
    _mode = mode;
    _wait = wait;
    _api = api;
  }

  @override
  Future<void> _setup() async {
    var new_lp_settings =
        await _api.messages.getLongPollServer(lp_version: _version);
    var server_url = new_lp_settings['response']['server'];
    _server_url = 'https://$server_url';
    _requests_query_params = {
      'act': 'a_check',
      'wait': _wait.toString(),
      'mode': _mode.toString(),
      'version': _version.toString()
    };
    new_lp_settings['response'].forEach((key, value) {
      _requests_query_params[key] = value.toString();
    });
  }

  Stream<UserEvent> runPolling() async* {
    await for (var event in super.baseRunPolling()) {
      yield UserEvent(event as List);
    }
  }
}

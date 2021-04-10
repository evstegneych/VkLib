import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vklib/src/api.dart';
import 'package:vklib/src/longpool/objects//message_new.dart';
import 'package:vklib/src/main.dart';

class BotsLongPool {
  late VkLib _vk;
  late API _api;

  late Map<String, dynamic> longPool;
  late int groupId;

  Map<String, Future<dynamic>> handlers = {};
  Future<dynamic> Function(MessageNewObject)? _messageNew;

  BotsLongPool(VkLib vk) {
    _vk = vk;
    _api = vk.api;
  }

  String get longPoolUrl => '${longPool["server"]}'
      '?act=a_check&key=${longPool["key"]}'
      '&wait=25&ts=${longPool["ts"]}';

  Future<void> updateLongPoolData() async {
    var _longPool = await _api.groups.getLongPollServer({'group_id': groupId});
    longPool = _longPool.data['response'];
  }

  Future<List<Map<String, dynamic>>> receiver() async {
    var resp = await http.post(Uri.parse(longPoolUrl));

    if (resp.statusCode != 200) return [];

    var response = json.decode(resp.body);

    if (response.containsKey('failed')) {
      if ([2, 3, 4].contains(response['failed'])) {
        await updateLongPoolData();
      }
      return [];
    }

    longPool['ts'] = response['ts'];

    var updates = <Map<String, dynamic>>[];

    for (Map<String, dynamic> update in response['updates']) {
      if (!update.containsKey('type')) {
        continue;
      }
      updates.add(update);
    }

    return updates;
  }

  void listen(String type, Future<Map> func) {
    handlers[type] = func;
  }

  void messageNew(Future<dynamic> Function(MessageNewObject) func) {
    _messageNew = func;
  }

  void start() async {
    await updateLongPoolData();
    while (true) {
      for (var update in await receiver()) {
        switch (update['type']) {
          case 'message_new':
            {
              if (_messageNew != null) {
                await _messageNew!(MessageNewObject(update));
              } else if (handlers['message_new'] != null) {
                await handlers['message_new'];
              }
            }
            break;

          default:
            {
              if (handlers['message_new'] != null) {
                await handlers['message_new'];
              }
            }
        }
      }
    }
  }
}

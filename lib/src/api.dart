import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:vklib/src/methods/account.dart';
import 'package:vklib/src/methods/friends.dart';
import 'package:vklib/src/methods/messages.dart';
import 'package:vklib/src/params.dart';

import '../vklib.dart';
import 'exception.dart';

class API {
  final String _baseUrl = 'https://api.vk.com/method';

  late VkLib _vk;

  late Account account;
  late Friends friends;
  late Messages messages;

  API(VkLib vk) {
    _vk = vk;
    account = Account(this);
    friends = Friends(this);
    messages = Messages(this);
  }

  Future<Params> request(
    String method,
    Map<String, dynamic> data,
  ) async {
    var requests_params = _vk.defaultOptions;
    requests_params.addAll(data);

    if (requests_params.get('random_id') == null) {
      requests_params.add('random_id', Random().nextInt(4294967296));
    }

    for (var item in requests_params.params.entries) {
      requests_params.params[item.key] = item.value.toString();
    }

    var url = Uri.parse(_baseUrl + '/$method');
    var response = await http.post(
      url,
      body: requests_params.params,
    );

    if (response.statusCode != 200) {
      throw APIException(-1, response.statusCode.toString()).error;
    }

    var response_params = Params.fromJson(response.body);
    if (response_params.get('error') != null) {
      Map error = response_params.get('error');

      throw APIException(
        error['error_code'],
        error['error_msg'],
      ).error;
    }

    return response_params;
  }
}

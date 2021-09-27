import 'dart:core';

import 'package:dotenv/dotenv.dart' show load, env;
import 'package:test/test.dart';
import 'package:vklib/vklib.dart' show VkLib, MessageNewObject, GroupLongPoll;

// todo: Когда нибудь сделать тесты
void main() {
  late VkLib vk;
  late VkLib vk_user;
  final v = '5.130';
  load();

  setUp(() {
    vk = VkLib(token: '%token', v: v);
    // vk_user = VkLib(token: user_token, v: v);
  });

  // group('Test API request', () {
  //   test('messages.send', () async {
  //     await vk.api.request(
  //       'messages.send',
  //       {'user_id': 229203735, 'message': 'Hello'},
  //     );
  //   });
  //   test('messages.getById', () async {
  //     await vk_user.api.messages.getById(
  //       {
  //         'message_ids': [21176884, 21177928, 21177634, 15000000]
  //       },
  //     ).then((value) {
  //       for (var item in value.response.items) {
  //         print('${item.fromId}:${item.peerId} - ${item.text}');
  //       }
  //     });
  //   });
  // });
}

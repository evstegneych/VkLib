import 'dart:core';

import 'package:dotenv/dotenv.dart' show load, env;
import 'package:test/test.dart';
import 'package:vklib/src/objects/other/params.dart';
import 'package:vklib/vklib.dart' show VkLib, MessageNewObject, BotsLongPool;

void main() {
  late VkLib vk;
  late VkLib vk_user;
  final v = '5.130';
  load();
  var token = env['token'] ?? 'ass';
  var user_token = env['user_token'] ?? 'ass';

  setUp(() {
    vk = VkLib(token: token, v: v);
    vk_user = VkLib(token: user_token, v: v);
  });

  group('Test VkLib class', () {
    test('Version test', () {
      expect(vk.version, v);
    });

    test('ENV test', () {
      assert(token is String);
    });

    test('Params test', () {
      final testJson = '{"тест":123}';
      var params = Params.fromJson(testJson);
      expect(params.toString(), testJson);
    });
  });

  group('Test API request', () {
    test('messages.send', () async {
      await vk.api.request(
        'messages.send',
        {'user_id': 229203735, 'message': 'Hello'},
      );
    });
    test('messages.getById', () async {
      await vk_user.api.messages.getById(
        {
          'message_ids': [21176884, 21177928]
        },
      ).then((value) {
        for (var item in value.response.items) {
          print('${item.fromId}:${item.peerId} - ${item.text}');
        }
      });
    });
  });
  group('Test LP', () {
    test('BotsLongPool', () async {
      var lp = BotsLongPool(vk)..groupId = 195607933;

      lp.messageNew((MessageNewObject context) async {});

      lp.start();
    });
  });
}

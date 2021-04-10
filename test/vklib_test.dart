import 'dart:core';

import 'package:dotenv/dotenv.dart' show load, env;
import 'package:test/test.dart';
import 'package:vklib/src/params.dart';
import 'package:vklib/vklib.dart' show VkLib, MessageNewObject, BotsLongPool;

void main() {
  late VkLib vk;
  var token;
  final v = 5.130;
  load();
  token = env['token'] ?? 'ass';

  setUp(() {
    vk = VkLib(token: token, v: v);
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
  });
  group('Test LP', () {
    test('messages.send', () async {
      var lp = BotsLongPool(vk)..groupId = 195607933;

      await vk.api.account.setInfo();

      lp.messageNew((MessageNewObject context) async {
        print(
            '${context.object!.message.fromId} - ${context.object!.message.text}');
      });

      lp.start();
    });
  });
}

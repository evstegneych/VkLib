import 'package:dotenv/dotenv.dart' show load, env;
import 'package:test/test.dart';
import 'package:vklib/src/params.dart';
import 'package:vklib/vklib.dart';

void main() {
  late VkLib vk;
  var token;
  final v = '5.130';
  load();
  token = env['token'] ?? 'ass';

  group('Test VkLib class', () {
    setUp(() {
      vk = VkLib(
        token: token,
        v: v,
      );
    });

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
    setUp(() {
      vk = VkLib(
        token: token,
        v: v,
      );
    });

    test('messages.send', () async {
      await vk.api.request(
        'messages.send',
        {'user_id': 229203735, 'message': 'Hello'},
      );
    });
  });
}

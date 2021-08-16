import 'package:dotenv/dotenv.dart';
import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/objects/other/language.dart' show LanguageType;

class VkLib {
  late API api;

  VkLib({
    required String token,
    String v = '5.130',
    String lang = LanguageType.RU,
    bool test_mode = false,
  }) {
    var _access_token = '';
    if (token.startsWith('%')) {
      load();
      _access_token = env['token'] ?? 'unknown';
    } else {
      _access_token = token;
    }
    api = API(_access_token, v: v, lang: lang, test_mode: test_mode);
  }
}

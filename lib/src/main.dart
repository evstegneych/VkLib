import 'package:dotenv/dotenv.dart';
import 'package:vklib/src/api.dart';
import 'package:vklib/src/objects/other/language.dart' show LanguageType;
import 'package:vklib/src/objects/other/params.dart';

class VkLib {
  late String _access_token;
  late String _v;
  late String _lang;
  late API api;
  late bool _test_mode;

  VkLib({
    required String token,
    String v = '5.130',
    String lang = LanguageType.RU,
    bool test_mode = false,
  }) {
    _test_mode = false;
    if (token.startsWith('%')) {
      load();
      _access_token = env['token'] ?? 'unknown';
    } else {
      _access_token = token;
    }
    _v = v;
    _lang = lang;
    api = API(this);
  }

  Params get defaultOptions {
    return Params.fromMap({
      'access_token': access_token,
      'v': version,
      'lang': _lang,
      'test_mode': _test_mode,
    });
  }

  String get access_token => _access_token;

  String get version => _v;
}

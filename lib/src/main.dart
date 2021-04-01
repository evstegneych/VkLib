import 'package:vklib/src/params.dart';

import 'api.dart';
import 'language_type.dart' show LanguageType, getLanguageString;

class VkLib {
  late String _access_token;
  late String _v;
  late LanguageType _lang;
  late Duration _pollingWait;
  late API api;
  bool _test_mode = false;

  VkLib({
    required String token,
    String v = '5.130',
    LanguageType lang = LanguageType.RU,
    Duration pollingWait = const Duration(seconds: 1),
    bool test_mode = false,
  }) {
    _test_mode = false;
    _access_token = token;
    _v = v;
    _lang = lang;
    _pollingWait = pollingWait;
    api = API(this);
  }

  Params get defaultOptions {
    return Params.fromMap({
      'access_token': access_token,
      'v': version,
      'lang': '${getLanguageString(_lang)}',
      'test_mode': _test_mode,
    });
  }

  String get access_token => _access_token;

  String get version => _v;
}

import 'package:vklib/src/params.dart';

import 'api.dart';
import 'language_type.dart' show LanguageType;

class VkLib {
  late String _access_token;
  late double _v;
  late String _lang;
  late API api;
  bool _test_mode = false;

  VkLib({
    required String token,
    double v = 5.130,
    String lang = LanguageType.RU,
    bool test_mode = false,
  }) {
    _test_mode = false;
    _access_token = token;
    _v = v;
    _lang = lang;
    api = API(this);
  }

  Params get defaultOptions {
    return Params.fromMap({
      'access_token': access_token,
      'v': '$version',
      'lang': _lang,
      'test_mode': _test_mode,
    });
  }

  String get access_token => _access_token;

  double get version => _v;
}

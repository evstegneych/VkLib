import 'package:vklib/src/base/exception.dart';

class APIException extends BaseException {
  APIException(code, cause) : super('APIException', code, cause);
}

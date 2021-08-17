import 'package:vklib/src/core/base/exception.dart';

class APIException extends BaseException {
  APIException(code, cause) : super('APIException', code, cause);
}

class CoreException extends BaseException {
  CoreException(cause) : super('CoreException', 0, cause);
}
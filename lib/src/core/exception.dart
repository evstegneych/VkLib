import 'package:vklib/src/core/base/exception.dart';

class APIException extends BaseException {
  Map<dynamic, dynamic> object;
  APIException(code, cause, this.object) : super('APIException', code, cause);
}

class CoreException extends BaseException {
  CoreException(cause) : super('CoreException', 0, cause);
}

import 'package:vklib/src/core/base/exception.dart';
import 'package:vklib/src/core/base/types.dart';

class VKException extends BaseException {
  Json object;

  VKException(this.object)
      : super('VKException', object['error_code'], object['error_msg']);
}

class CoreException extends BaseException {
  CoreException(cause) : super('CoreException', 0, cause);
}

/// BaseException
abstract class BaseException implements Exception {
  /// Exception title
  late String title;

  /// Exception cause
  late String cause;

  /// Exception code
  late int code;

  /// BaseException
  BaseException(this.title, this.code, this.cause);

  @override
  String toString() {
    return '$title: [$code] $cause';
  }
}

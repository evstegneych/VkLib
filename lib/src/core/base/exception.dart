abstract class BaseException implements Exception {
  late String title;
  late String cause;
  late int code;

  BaseException(this.title, this.code, this.cause);

  @override
  String toString() {
    return '$title: [$code] $cause';
  }
}

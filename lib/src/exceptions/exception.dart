class APIException implements Exception {
  String cause;
  int code;

  APIException(this.code, this.cause);

  @override
  String toString() {
    return 'APIException [$code] $cause';
  }
}

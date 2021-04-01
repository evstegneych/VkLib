class APIException implements Exception {
  String cause;
  int code;

  APIException(this.code, this.cause);

  String get error => 'APIException [$code] $cause';
}

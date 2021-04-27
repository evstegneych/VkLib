import 'dart:convert';

class BaseApiResponse {
  late final Map<String, dynamic> _body;

  Map<String, dynamic> get body => _body;

  BaseApiResponse(Map<String, dynamic> _map) {
    _body = _map;
  }

  @override
  String toString() => json.encode(_body);
}

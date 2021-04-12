import 'dart:convert';

class BaseResponse {
  late final Map<String, dynamic> _body;

  Map<String, dynamic> get body => _body;

  BaseResponse.fromJson(String _json) {
    _body = json.decode(_json);
  }

  BaseResponse.fromMap(Map<String, dynamic> _map) {
    _body = _map;
  }

  @override
  String toString() => json.encode(_body);
}

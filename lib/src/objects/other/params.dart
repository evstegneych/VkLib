import 'dart:convert';
import 'dart:core';

class Params {
  Map<String, dynamic> _body = {};

  Params();

  Params.fromJson(String _json) {
    _body = json.decode(_json);
  }

  Params.fromMap(Map<String, dynamic> _map) {
    _body = _map;
  }

  @override
  String toString() => json.encode(_body);

  Map<String, dynamic> get data => _body;

  void addAll(Map<String, dynamic> other) {
    _body.addAll(other);
  }

  void add(String key, dynamic value) {
    _body[key] = value;
  }

  dynamic get(String key) {
    return _body[key];
  }

  void remove(String key) {
    _body.remove(key);
  }
}

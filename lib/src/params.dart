import 'dart:convert';
import 'dart:core';

class Params {
  Map<String, dynamic> _params = {};

  Params();

  Params.fromJson(String _json) {
    _params = json.decode(_json);
  }

  Params.fromMap(Map<String, dynamic> _map) {
    _params = _map;
  }

  @override
  String toString() => json.encode(_params);

  Map<String, dynamic> get data => _params;

  void addAll(Map<String, dynamic> other) {
    _params.addAll(other);
  }

  void add(String key, dynamic value) {
    _params[key] = value;
  }

  dynamic get(String key) {
    return _params[key];
  }

  void remove(String key) {
    _params.remove(key);
  }
}

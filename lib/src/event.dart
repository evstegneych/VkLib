import 'dart:core';

import 'package:vklib/src/base/event.dart';

class GroupEvent extends BaseEvent<Map<String, dynamic>> {
  GroupEvent(content) : super(content);

  Map<String, dynamic> get _content => super.content;

  @override
  String? get type {
    return _content['type'];
  }

  @override
  Map<String, dynamic> get object {
    return _content['object'] ?? {};
  }

  int? get group_id {
    return _content['group_id'];
  }
}

class UserEvent extends BaseEvent<List<dynamic>> {
  UserEvent(content) : super(content);

  List<dynamic> get _content => super.content ?? [];

  @override
  int? get type {
    return _content[0];
  }

  @override
  List<dynamic> get object {
    return _content;
  }
}

import 'dart:core';

import 'package:vklib/src/core/base/event.dart';
import 'package:vklib/src/core/base/types.dart';

class GroupEvent extends BaseEvent<Json, String?> {
  GroupEvent(content) : super(content);

  Json get _content => super.content;

  @override
  String? get type {
    return _content['type'];
  }

  @override
  Json get object {
    return _content['object'] ?? {};
  }

  int? get group_id {
    return _content['group_id'];
  }
}

class UserEvent extends BaseEvent<List<dynamic>?, int?> {
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

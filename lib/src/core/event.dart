import 'dart:core';

import 'package:vklib/src/core/base/event.dart';
import 'package:vklib/src/core/base/types.dart';

/// Base GroupEvent
class GroupEvent extends BaseEvent<Json, String?> {
  /// Base GroupEvent
  GroupEvent(content) : super(content);

  @override
  String? get type {
    return content['type'];
  }

  @override
  Json get object {
    return content['object'] ?? {};
  }

  /// get group id
  int? get group_id {
    return content['group_id'];
  }
}

/// Base UserEvent
class UserEvent extends BaseEvent<List<dynamic>?, int?> {
  /// Base UserEvent
  UserEvent(content) : super(content);

  @override
  List<dynamic> get content => super.content ?? [];

  @override
  int? get type {
    return content[0];
  }

  @override
  List<dynamic> get object {
    return content;
  }
}

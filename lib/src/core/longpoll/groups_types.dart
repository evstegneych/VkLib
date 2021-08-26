class GroupLongPollEventsEnum {
  static EventGroupType get MessageNew => _MessageNewBotType();

  static EventGroupType get MessageEdit => _MessageEditBotType();

  static EventGroupType get MessageReply => _MessageReplyBotType();

  static EventGroupType get MessageAllow => _MessageAllowBotType();

  static EventGroupType get MessageDeny => _MessageDenyBotType();
}

abstract class EventGroupType {
  String getName();

  @override
  String toString() {
    return getName();
  }

  @override
  bool operator ==(Object other) {
    return getName().toString() == other.toString();
  }
}

class _MessageNewBotType extends EventGroupType {
  @override
  String getName() => 'message_new';
}

class _MessageEditBotType extends EventGroupType {
  @override
  String getName() => 'message_edit';
}

class _MessageReplyBotType extends EventGroupType {
  @override
  String getName() => 'message_reply';
}

class _MessageAllowBotType extends EventGroupType {
  @override
  String getName() => 'message_allow';
}

class _MessageDenyBotType extends EventGroupType {
  @override
  String getName() => 'message_deny';
}

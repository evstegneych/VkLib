class BotsEventsEnum {
  static EventBotType get MessageNew => _MessageNewBotType();

  static EventBotType get MessageEdit => _MessageEditBotType();

  static EventBotType get MessageReply => _MessageReplyBotType();

  static EventBotType get MessageAllow => _MessageAllowBotType();

  static EventBotType get MessageDeny => _MessageDenyBotType();
}

abstract class EventBotType {
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

class _MessageNewBotType extends EventBotType {
  @override
  String getName() => 'message_new';
}

class _MessageEditBotType extends EventBotType {
  @override
  String getName() => 'message_edit';
}

class _MessageReplyBotType extends EventBotType {
  @override
  String getName() => 'message_reply';
}

class _MessageAllowBotType extends EventBotType {
  @override
  String getName() => 'message_allow';
}

class _MessageDenyBotType extends EventBotType {
  @override
  String getName() => 'message_deny';
}

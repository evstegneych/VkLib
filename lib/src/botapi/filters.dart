import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

typedef filterType<T> = T Function(MessageNewObject obj);

class BotFilters {
  static filterType ignoreBots() {
    return (MessageNewObject obj) {
      return obj.isUser;
    };
  }

  static filterType chatOnly() {
    return (MessageNewObject obj) {
      return obj.isChat;
    };
  }

  static filterType other(filterType _filter) {
    return _filter;
  }
}

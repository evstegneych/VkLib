import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

typedef filterType<T> = T Function(MessageNewObject obj);

class BaseFilter {
  BaseFilter(this.filter);

  filterType filter;

  Future<bool> execute(MessageNewObject obj) async {
    return filter(obj) as bool;
  }
}

/// Standart Kit of Filters
class BotFilters {
  static BaseFilter ignoreBots() {
    return BaseFilter((obj) => obj.isUser);
  }

  static BaseFilter chatOnly() {
    return BaseFilter((obj) => obj.isChat);
  }

  static BaseFilter other(filterType _filter) {
    return BaseFilter(_filter);
  }
}

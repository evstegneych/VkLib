import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

typedef filterComputeCallback<T> = T Function(MessageNewObject obj);

class BaseFilter {
  BaseFilter(this.filter);

  filterComputeCallback filter;

  Future<bool> compute(MessageNewObject obj) async {
    return filter(obj) as bool;
  }
}

/// Standart Kit of Filters
mixin BotFilters {
  static BaseFilter get ignoreBots {
    return BaseFilter((obj) => obj.isUser);
  }

  static BaseFilter get chatOnly {
    return BaseFilter((obj) => obj.isChat);
  }

  static BaseFilter get alwaysTrue {
    return BaseFilter((obj) => true);
  }

  static BaseFilter other(filterComputeCallback _filter) {
    return BaseFilter(_filter);
  }
}

// Example of custom filter
// class JopaFilter extends BaseFilter {
//   JopaFilter() : super((obj) => obj.isUser);
// }
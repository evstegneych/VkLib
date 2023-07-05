import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

typedef filterType<T> = T Function(MessageNewObject obj);

class BaseFilter {
  BaseFilter(this.filter);

  filterType filter;

  Future<bool> compute(MessageNewObject obj) async {
    return filter(obj) as bool;
  }

  BaseFilter operator |(BaseFilter? other) {
    if (other == null) {
      return this;
    }
    return FilterOr(this, other);
  }

  BaseFilter operator &(BaseFilter? other) {
    if (other == null) {
      return this;
    }
    return FilterAnd(this, other);
  }
}

/// Hi vq.
class FilterOr extends BaseFilter {
  FilterOr(BaseFilter filter1, BaseFilter filter2)
      : filter2 = filter2,
        super(filter1.filter);
  late BaseFilter filter2;

  @override
  Future<bool> compute(MessageNewObject obj) async {
    return await super.compute(obj) || await filter2.compute(obj);
  }
}

/// Hi vq.
class FilterAnd extends BaseFilter {
  FilterAnd(BaseFilter filter1, BaseFilter filter2)
      : filter2 = filter2,
        super(filter1.filter);
  late BaseFilter filter2;

  @override
  Future<bool> compute(MessageNewObject obj) async {
    return await super.compute(obj) && await filter2.compute(obj);
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

  static BaseFilter other(filterType _filter) {
    return BaseFilter(_filter);
  }
}

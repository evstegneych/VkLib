import 'package:vklib/src/botapi/filters.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

abstract base class BaseHandler<T> {
  BaseHandler({required this.handler, required this.filters});

  late T handler;
  late Iterable<BaseFilter> filters;

  Future<bool> computeFilters(MessageNewObject event) async {
    for (var filter in filters) {
      if (!await filter.compute(event)) {
        return false;
      }
    }
    return true;
  }

  Future<void> execute(MessageNewObject event);
}

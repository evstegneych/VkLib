import 'package:vklib/src/botapi/filters.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

abstract base class BaseHandler<T> {
  BaseHandler({required this.handler, required this.filters});

  late T handler;
  late BaseFilter? filters;

  bool _canHandle(MessageNewObject event);

  Future<bool> computeFilters(MessageNewObject event) async {
    return await filters?.compute(event) ?? true;
  }

  Future<void> execute(MessageNewObject event);
}

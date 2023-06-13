import 'package:vklib/src/botapi/base/base_handler.dart';
import 'package:vklib/src/botapi/filters.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

typedef botEventHandlerType<T> = T Function(MessageNewObject ctx);

class EventHandler extends BaseHandler<botEventHandlerType> {
  EventHandler(
    handler,
    this.type, {
    this.filters,
  }) : super(handler);
  late BaseFilter? filters;
  late String type;

  bool _canHandle(MessageNewObject event) {
    return event.type == type;
  }

  Future<void> execute(MessageNewObject event) async {
    if (!_canHandle(event)) {
      return;
    }
    if (!(await filters?.execute(event) ?? true)) {
      return;
    }
    handler(event);
  }
}

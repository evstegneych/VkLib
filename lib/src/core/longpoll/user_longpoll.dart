import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/base/longpoll.dart';
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/longpoll/types.dart';

class UserLongPoll extends BaseUserLongPoll {
  Map<int, List<LongPollEventHandler<StandartUserCommand>>> handlers = {};

  UserLongPoll(API api) : super(api: api);

  void on(BaseEventType type, StandartUserCommand func) {
    if (handlers[type.getName()] == null) {
      handlers[type.getName()] = [];
    }
    handlers[type.getName()]!.add(LongPollEventHandler(func, type));
  }

  void start() async {
    await for (var event in super.runPolling()) {
      var to_execute = handlers[event.type];
      to_execute?.forEach((element) {
        element.callback(event);
      });
    }
  }
}

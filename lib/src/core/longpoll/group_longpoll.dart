import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/base/longpoll.dart';
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/longpoll/types.dart';

class GroupLongPoll extends BaseGroupLongPoll {
  Map<String, List<LongPollEventHandler<StandartGroupCommand>>> handlers = {};

  GroupLongPoll(API api) : super(api: api);

  GroupLongPoll.withGroupId(API api, int _groupId)
      : super(api: api, group_id: _groupId);

  void on(BaseEventType type, StandartGroupCommand func) {
    if (handlers[type.getName()] == null) {
      handlers[type.getName()] = [];
    }
    handlers[type.getName()]!.add(LongPollEventHandler(type, func));
  }

  void start() async {
    await for (var event in super.runPolling()) {
      var to_execute = handlers[event.content['type']];
      to_execute?.forEach((element) {
        element.callback(event);
      });
    }
  }
}

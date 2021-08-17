import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/base/longpoll.dart';
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/longpoll/types.dart';

class _Handler {
  late StandartGroupCommand command;
  late EventBotType type;

  _Handler(this.type, this.command);
}

class BotsLongPoll extends BaseGroupLongPoll {
  Map<String, List<_Handler>> handlers = {};

  BotsLongPoll(API api) : super(api: api);

  BotsLongPoll.withGroupId(API api, int _groupId)
      : super(api: api, group_id: _groupId);

  void on(EventBotType type, StandartGroupCommand func) {
    if (handlers[type.getName()] == null) {
      handlers[type.getName()] = [];
    }
    handlers[type.getName()]!.add(_Handler(type, func));
  }

  void start() async {
    await for (var event in super.runPolling()) {
      var to_execute = handlers[event.content['type'] ?? 'unknown'];
      to_execute?.forEach((element) {
        element.command(event);
      });
    }
  }
}

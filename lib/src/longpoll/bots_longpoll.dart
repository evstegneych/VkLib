import 'package:vklib/src/api.dart';
import 'package:vklib/src/core/base/longpoll.dart';
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/main.dart';

class BotsLongPoll extends BaseGroupLongPoll {
  Map<String, List<StandartGroupCommand>> handlers = {};

  BotsLongPoll(API api) : super(api: api);

  BotsLongPoll.withGroupId(VkLib vk, int _groupId)
      : super(api: vk.api, group_id: _groupId);

  void on(String type, StandartGroupCommand func) {
    if (handlers[type] == null) {
      handlers[type] = [];
    }
    handlers[type]!.add(func);
  }

  Future<void> start() async {
    await for (var event in super.runPolling()) {
      var to_execute = handlers[event.content['type'] ?? 'unknown'];
      to_execute?.forEach((element) {
        element(event);
      });
    }
  }
}

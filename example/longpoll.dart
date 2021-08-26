import 'package:vklib/vklib.dart';

void main() async {
  var vk = VkLib(token: '%token');

  var lp = GroupLongPoll(vk.api);

  lp.on(GroupLongPollEventsEnum.MessageNew, (event) async {
    print(event.object);
    await vk.api.messages.send(
      user_id: 1,
      message: 'Hello',
    );
  });

  lp.start();
}

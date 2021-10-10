import 'package:vklib/vklib.dart';

void main() async {
  final vk = VkLib(token: '%token');

  final lp = GroupLongPoll(vk.api);

  lp.messageNew((event) async {
    await vk.api.messages.send(
      user_id: event.message.fromId,
      message: event.message.text,
    );
  });

  print('run polling');
  lp.start();
}

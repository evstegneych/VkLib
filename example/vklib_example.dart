import 'package:vklib/vklib.dart';

void main() async {
  var vk = VkLib(token: '%token');

  var lp = BotsLongPoll(vk.api);
  lp.on('message_new', (el) async {
    print(el.content);
  });
  await lp.start();
}

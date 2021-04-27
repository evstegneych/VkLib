import 'package:dotenv/dotenv.dart';
import 'package:vklib/vklib.dart';

void main() async {
  load();
  var token = env['token'] ?? 'ass';
  var vk = VkLib(token: token);
  var lp = BotsLongPoll(vk);
  await lp.getGroupId();
  lp.messageNew((MessageNewObject context) async {
    print('${context.object.message.fromId} - ${context.object.message.text}');
  });

  lp.start();
}

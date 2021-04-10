import 'package:dotenv/dotenv.dart';
import 'package:vklib/vklib.dart';

void main() {
  load();
  var token = env['token'] ?? 'ass';
  var vk = VkLib(token: token);
  var lp = BotsLongPool(vk)..groupId = 195607933;

  lp.messageNew((MessageNewObject context) async {
    print(
        '${context.object!.message.fromId} - ${context.object!.message.text}');
  });

  lp.start();
}

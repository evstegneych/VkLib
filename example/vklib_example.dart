import 'package:vklib/vklib.dart';

void main() async {
  var vk = VkLib(token: '%token');

  var lp = BotsLongPoll(vk.api);

  lp.on(BotsEventsEnum.MessageNew, (event) async {
    print('${event.object['message']['from_id']}:'
        ' ${event.object['message']['text']}');
  });

  lp.start();
}

import 'package:vklib/vklib.dart';

// Тестовый файл лол)
void main() async {
  var vk = VkLib(token: '%user_token');

  var lp = UserLongPoll(vk.api);
  print('Start polling');
  lp.on(UserLongPollEventsEnum.messageNew, (event) async {
    print('${event.object[7]['from']}: ${event.object[6]}');
    // if (event.object['message']['text'] == 'jopa') {
    //   // await vk.api.messages.send(
    //   //   user_id: event.object,
    //   //   message: 'sam jopa',
    //   // );
    // }
  });

  lp.start();
}

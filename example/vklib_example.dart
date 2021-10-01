import 'package:vklib/vklib.dart';

// Тестовый файл лол)
void main() async {
  final vk = VkLib(token: '%user_token');

  final lp = UserLongPoll(vk.api);
  print('Start polling');
  lp.on(UserLongPollEventsEnum.messageNew, (event) async {
    print('${event.object[6]['from']}: ${event.object[5]}');
  });

  lp.start();
}

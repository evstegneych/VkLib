import 'package:vklib/vklib.dart';

void main() async {
  var vk = VkLib(token: '<token>');
  await vk.api.request(
    'messages.send',
    {'user_id': 1, 'message': 'Hello'},
  );
}

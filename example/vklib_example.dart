import 'package:vklib/vklib.dart';

// Тестовый файл лол)
void main() async {
  final vklib = VkLib(token: '%token');

  vklib.router.command(
    pattern: 'команда',
    func: (ctx) async {
      await ctx.answer(
        message: 'jopa',
      );
    },
  );

  vklib.run();
}

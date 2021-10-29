import 'package:vklib/vklib.dart';

// Тестовый файл лол)
void main() async {
  final vklib = VkLib(token: '%token');

  vklib.router.command(
    pattern: ['р', 'h'],
    // filters: [BotFilters.chatOnly(), BotFilters.ignoreBots()],
    handler: (ctx) async {
      var arg = ctx.args.get<int>(
        1,
        onError: (err) {
          print('onError: $err');
        },
      );

      print('$arg = ${arg.runtimeType}');

      await ctx.answer(
        message: 'jopa = ${ctx.args.objects.join(', ')}',
      );
    },
  );

  vklib.run();
}

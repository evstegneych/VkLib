import 'package:vklib/vklib.dart';

// Тестовый файл лол)
void main() async {
  final vklib = VkLib(token: '%token')
    ..router.name = 'Test Bot'
    ..router.prefixes = ['!']
    ..router.filters = [BotFilters.ignoreBots];

  vklib.router.onEvent(
    'message_new',
    handler: (ctx) {
      print(ctx.message.text);
    },
  );

  vklib.router.command(
    pattern: ['test', 'тест'],
    filters: [BotFilters.chatOnly, BotFilters.ignoreBots],
    handler: (ctx) async {
      final arg = ctx.args.maybeGet<int>(1);

      print('$arg = ${arg.runtimeType}');

      await ctx.answer(
        message: 'Аргументы = ${ctx.args.objects.join(', ')}',
      );
    },
  );
  
  print(vklib.router);
  // vklib.run();
}

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
    pattern: ['р', 'h'],
    filters: [BotFilters.chatOnly, BotFilters.ignoreBots],
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
  print(vklib.router);
  // vklib.run();
}

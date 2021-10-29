import 'package:vklib/src/botapi/command.dart';
import 'package:vklib/src/botapi/filters.dart';
import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

class BotRouter {
  BotRouter({
    required this.api,
    this.name = 'VkLib Bot',
    this.prefixes = const [],
    this.filters = const [],
  }) : commands = [];

  late String name;
  late List<String> prefixes;
  late List<BaseFilter> filters;
  late API api;
  late List<BotCommand> commands;

  void justText({
    required List<String> pattern,
    required botCommandFuncType handler,
    List<String> prefixes = const [],
    List<BaseFilter> filters = const [],
  }) {
    commands.add(BotCommand(
      pattern: pattern,
      handler: handler,
      api: api,
      filters: filters + this.filters,
      type: BotCommandType.justText,
      prefixes: prefixes + this.prefixes,
    ));
  }

  void command({
    required List<String> pattern,
    required botCommandFuncType handler,
    List<String> prefixes = const [],
    List<BaseFilter> filters = const [],
  }) {
    commands.add(BotCommand(
      pattern: pattern,
      handler: handler,
      api: api,
      filters: filters + this.filters,
      type: BotCommandType.command,
      prefixes: prefixes + this.prefixes,
    ));
  }

  void commandRegExp({
    required List<String> pattern,
    required botCommandFuncType handler,
    List<String> prefixes = const [],
    List<BaseFilter> filters = const [],
  }) {
    commands.add(BotCommand(
      pattern: pattern,
      handler: handler,
      api: api,
      filters: filters + this.filters,
      type: BotCommandType.regExp,
      // prefixes: prefixes + this.prefixes,
    ));
  }

  void handleEvent(MessageNewObject event) {
    commands.forEach((element) {
      element.execute(event);
    });
  }
}

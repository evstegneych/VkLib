import 'package:vklib/src/botapi/command.dart';
import 'package:vklib/src/botapi/filters.dart';
import 'package:vklib/src/botapi/handlers.dart';
import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

class BotRouter {
  BotRouter({
    required this.api,
    this.name = 'VkLib Bot',
    this.prefixes = const [],
    this.filters,
  })  : commands = [],
        eventHandlers = [];

  late String name;
  late List<String> prefixes;
  late BaseFilter? filters;
  late API api;
  late List<BotCommand> commands;
  late List<EventHandler> eventHandlers;

  void setFilters(BaseFilter filter) {
    filters = filter;
  }

  void onEvent(
    String eventType, {
    BaseFilter? filters,
    required botEventHandlerType handler,
  }) {
    eventHandlers.add(EventHandler(
      handler,
      eventType,
      filters: _makeNotNullFilter(filters, filter2: this.filters),
    ));
  }

  void justText({
    required dynamic pattern,
    List<String> prefixes = const [],
    BaseFilter? filters,
    required botCommandHandlerType handler,
  }) {
    commands.add(BotCommand(
      pattern: pattern,
      handler: handler,
      api: api,
      filters: _makeNotNullFilter(filters, filter2: this.filters),
      type: BotCommandType.justText,
      prefixes: prefixes + this.prefixes,
    ));
  }

  void command({
    required dynamic pattern,
    List<String> prefixes = const [],
    BaseFilter? filters,
    required botCommandHandlerType handler,
  }) {
    commands.add(BotCommand(
      pattern: pattern,
      handler: handler,
      api: api,
      filters: _makeNotNullFilter(filters, filter2: this.filters),
      type: BotCommandType.command,
      prefixes: prefixes + this.prefixes,
    ));
  }

  void commandRegExp({
    required dynamic pattern,
    List<String> prefixes = const [],
    BaseFilter? filters,
    required botCommandHandlerType handler,
  }) {
    commands.add(BotCommand(
      pattern: pattern,
      handler: handler,
      api: api,
      filters: _makeNotNullFilter(filters, filter2: this.filters),
      type: BotCommandType.regExp,
    ));
  }

  void handleEvent(MessageNewObject event) {
    commands.forEach((element) {
      element.execute(event);
    });
    eventHandlers.forEach((element) {
      element.execute(event);
    });
  }

  BaseFilter _makeNotNullFilter(BaseFilter? filter1, {BaseFilter? filter2}) {
    if (filter1 != null && filter2 != null) {
      return filter1 & filter2;
    }
    if (filter1 == null && filter2 == null) {
      return BotFilters.alwaysTrue;
    }
    return filter1 ?? filter2!;
  }
}

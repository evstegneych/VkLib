import 'package:vklib/src/botapi/base/base_handler.dart';
import 'package:vklib/src/botapi/filters.dart';
import 'package:vklib/src/botapi/handlers.dart';
import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

class BotRouter {
  BotRouter({
    required API api,
    this.name = 'VkLib Bot',
    this.prefixes = const [],
    this.filters = const [],
  }) : _api = api;

  late String name;
  late List<String> prefixes;
  late Iterable<BaseFilter> filters;
  late final API _api;
  late final List<BaseHandler> _handlers = [];

  void onEvent(
    String eventType, {
    Iterable<BaseFilter> filters = const [],
    required botEventHandlerType handler,
  }) {
    _handlers.add(EventMessageHandler(
      eventType,
      handler: handler,
      filters: filters,
    ));
  }

  void justText({
    List<String> prefixes = const [],
    Iterable<BaseFilter> filters = const [],
    required botCommandHandlerType handler,
  }) {
    _handlers.add(JustTextMessageHandler(
      handler: handler,
      api: _api,
      filters: filters,
      prefixes: prefixes + this.prefixes,
    ));
  }

  void command({
    required dynamic pattern,
    List<String> prefixes = const [],
    Iterable<BaseFilter> filters = const [],
    required botCommandHandlerType handler,
  }) {
    _handlers.add(CommandMessageHandler(
      pattern: pattern,
      handler: handler,
      api: _api,
      filters: filters,
      prefixes: prefixes + this.prefixes,
    ));
  }

  void commandRegExp({
    required dynamic pattern,
    List<String> prefixes = const [],
    Iterable<BaseFilter> filters = const [],
    required botCommandHandlerType handler,
  }) {
    _handlers.add(RegExpMessageHandler(
      pattern: pattern,
      handler: handler,
      api: _api,
      filters: filters,
    ));
  }

  void handleEvent(MessageNewObject event) {
    for (final el in _handlers) {
      el.execute(event);
    }
  }

  @override
  String toString() {
    var str = 'BotRouter $name:\n';
    for (final el in _handlers) {
      str += el.toString() + '\n';
    }
    return str;
  }
}

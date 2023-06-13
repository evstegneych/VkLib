import 'package:vklib/src/botapi/base/base_handler.dart';
import 'package:vklib/src/botapi/context.dart';
import 'package:vklib/src/botapi/filters.dart';
import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';

enum BotCommandType {
  regExp,
  command,
  justText,
}

typedef botCommandHandlerType<T> = T Function(MessageNewContext ctx);

class BotCommand extends BaseHandler<botCommandHandlerType> {
  BotCommand({
    required dynamic pattern,
    required botCommandHandlerType handler,
    required this.api,
    this.type = BotCommandType.command,
    required this.filters,
    this.prefixes = const [],
  })  : args = [],
        pattern = [],
        super(handler) {
    if (pattern is String) {
      this.pattern = [pattern];
    } else if (pattern is List<String>) {
      this.pattern = pattern;
    }
  }

  late BotCommandType type;
  late List<String> pattern;
  late API api;
  late BaseFilter filters;
  late List<String> args;
  late List<String> prefixes;

  bool _canHandle(MessageNewObject event) {
    if (event.type != 'message_new') {
      return false;
    }
    switch (type) {
      case BotCommandType.command:
        return _resolveCommand(event);

      case BotCommandType.regExp:
        return _resolveRegExp(event);

      case BotCommandType.justText:
        return _resolveJustText(event);
    }
  }

  bool _resolveCommand(MessageNewObject event) {
    var text = event.message.text!.toLowerCase();
    if (text.isEmpty) {
      return false;
    }
    var _p = false;
    for (var p in prefixes) {
      if (text.startsWith(p)) {
        text = text.substring(p.length);
        _p = true;
        break;
      }
    }
    if (!_p && prefixes.isNotEmpty) {
      return false;
    }
    for (var singlePattern in pattern) {
      if (text.startsWith(singlePattern)) {
        text = text.substring(singlePattern.length);
        if (!text.startsWith(' ') && text.isNotEmpty) {
          return false;
        }
        args = text.trim().split(' ');
        return true;
      }
    }
    return false;
  }

  bool _resolveRegExp(MessageNewObject event) {
    for (var singlePattern in pattern) {
      var find = RegExp(singlePattern).firstMatch(event.message.text!);
      if (find != null) {
        for (var i = 1; i <= find.groupCount; i++) {
          args.add(find.group(i) ?? 'never');
        }
        return true;
      }
    }
    return false;
  }

  bool _resolveJustText(MessageNewObject event) {
    for (var singlePattern in pattern) {
      if (prefixes.isNotEmpty) {
        for (var prefix in prefixes) {
          if ('$prefix$singlePattern' == event.message.text) {
            return true;
          }
        }
      } else {
        if (singlePattern == event.message.text) {
          return true;
        }
      }
    }
    return false;
  }

  Future<void> execute(MessageNewObject event) async {
    if (event.message.text == null) {
      return;
    }
    if (!_canHandle(event)) {
      return;
    }
    if (!(await filters.execute(event))) {
      return;
    }
    handler(MessageNewContext(event: event, api: api, args: args));
  }
}

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

typedef botCommandFuncType<T> = T Function(MessageNewContext ctx);

class BotCommand extends BaseHandler<botCommandFuncType> {
  BotCommand({
    required this.pattern,
    required botCommandFuncType handler,
    required this.api,
    this.type = BotCommandType.command,
    this.filters = const [],
    this.prefixes = const [],
  })  : args = [],
        super(handler);

  late BotCommandType type;
  late String pattern;
  late API api;
  late List<filterType> filters;
  late List<String> args;
  late List<String> prefixes;

  bool _resolveEvent(MessageNewObject event) {
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
    if (text.startsWith(pattern)) {
      text = text.substring(pattern.length);
      if (!text.startsWith(' ') && text.isNotEmpty) {
        return false;
      }
      args = text.trim().split(' ');
      return true;
    }
    return false;
  }

  bool _resolveRegExp(MessageNewObject event) {
    if (event.message.text != null) {
      var find = RegExp(pattern).firstMatch(event.message.text!);
      if (find == null) {
        return false;
      }
      for (var i = 1; i <= find.groupCount; i++) {
        args.add(find.group(i) ?? 'never');
      }
      return true;
    } else {
      return false;
    }
  }

  bool _resolveJustText(MessageNewObject event) {
    if (prefixes.isNotEmpty) {
      for (var prefix in prefixes) {
        if ('$prefix$pattern' == event.message.text) {
          return true;
        }
      }
      return false;
    } else {
      return pattern == event.message.text;
    }
  }

  Future<void> execute(MessageNewObject event) async {
    if (_resolveEvent(event)) {
      handler(MessageNewContext(event: event, api: api, args: args));
    }
  }
}

import 'package:vklib/src/botapi/base/base_handler.dart';
import 'package:vklib/src/botapi/context.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';
import 'package:vklib/vklib.dart';

typedef botEventHandlerType = void Function(MessageNewObject ctx);
typedef botCommandHandlerType = void Function(MessageNewContext ctx);

final class EventMessageHandler extends BaseHandler<botEventHandlerType> {
  EventMessageHandler(
    this.type, {
    required super.filters,
    required super.handler,
  });
  late String type;
  bool _canHandle(MessageNewObject event) {
    return event.type == type;
  }

  @override
  Future<void> execute(MessageNewObject event) async {
    if (_canHandle(event) && await computeFilters(event)) {
      handler(event);
    }
  }
}

final class CommandMessageHandler extends BaseHandler<botCommandHandlerType> {
  CommandMessageHandler({
    required super.handler,
    required super.filters,
    required dynamic pattern,
    required this.api,
    this.prefixes = const [],
  }) {
    if (pattern is String) {
      this.pattern = [pattern];
    } else if (pattern is List<String>) {
      this.pattern = pattern;
    } else {
      throw CoreException('Pattern must be String or List<String>');
    }
  }

  late List<String> pattern;
  late API api;
  late List<String> args = [];
  late List<String> prefixes;

  bool _canHandle(MessageNewObject event) {
    if (event.message.text == null) {
      return false;
    }
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

  @override
  Future<void> execute(MessageNewObject event) async {
    if (_canHandle(event) && await computeFilters(event)) {
      handler(MessageNewContext(event: event, api: api, args: args));
    }
  }
}

final class JustTextMessageHandler extends BaseHandler<botCommandHandlerType> {
  JustTextMessageHandler({
    required super.handler,
    required super.filters,
    required this.api,
    this.prefixes = const [],
  });

  late List<String> pattern;
  late API api;
  late List<String> args = [];
  late List<String> prefixes;

  bool _canHandle(MessageNewObject event) {
    if (event.message.text == null) {
      return false;
    }
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

  @override
  Future<void> execute(MessageNewObject event) async {
    if (_canHandle(event) && await computeFilters(event)) {
      handler(MessageNewContext(event: event, api: api, args: args));
    }
  }
}

final class RegExpMessageHandler extends BaseHandler<botCommandHandlerType> {
  RegExpMessageHandler({
    required super.handler,
    required super.filters,
    required dynamic pattern,
    required this.api,
    this.prefixes = const [],
  }) {
    if (pattern is String) {
      this.pattern = [pattern];
    } else if (pattern is List<String>) {
      this.pattern = pattern;
    } else {
      throw CoreException('Pattern must be String or List<String>');
    }
  }

  late List<String> pattern;
  late API api;
  late List<String> args = [];
  late List<String> prefixes;

  bool _canHandle(MessageNewObject event) {
    if (event.message.text == null) {
      return false;
    }
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

  @override
  Future<void> execute(MessageNewObject event) async {
    if (_canHandle(event) && await computeFilters(event)) {
      handler(MessageNewContext(event: event, api: api, args: args));
    }
  }
}

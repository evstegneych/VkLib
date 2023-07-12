import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';
import 'package:vklib/src/core/utils/keyboard.dart';
import 'package:vklib/src/core/exception.dart';

abstract base class MessageArgs<T> {
  MessageArgs(this._objects);

  String? operator [](int index);

  K? maybeGet<K>(Object key);

  K get<K>(Object key);

  late final T _objects;

  T get objects => _objects;

  Never _argumentNotFound(dynamic key) {
    throw CoreException('Argument $key not found');
  }
}

final class DefaultArgs extends MessageArgs<List<String>> {
  DefaultArgs(super._objects);
  DefaultArgs.empty() : super([]);

  @override
  String? operator [](int index) {
    if (_objects.isEmpty || _objects.length < index + 1 || index < 0) {
      return null;
    } else {
      return _objects[index];
    }
  }

  @override
  T? maybeGet<T>(covariant int index) {
    try {
      var arg = this[index - 1]!;
      if (T is int) {
        return int.parse(arg) as T;
      } else if (T is double) {
        return double.parse(arg) as T;
      } else if (T is num) {
        return num.parse(arg) as T;
      } else {
        return arg as T;
      }
    } catch (_) {
      return null;
    }
  }

  @override
  T get<T>(covariant int index) {
    return maybeGet<T>(index) ?? _argumentNotFound(index);
  }
}

final class PayloadArgs extends MessageArgs<Map<String, String>> {
  PayloadArgs(super._objects);

  @override
  String? operator [](int index) {
    if (_objects.isEmpty || _objects.length < index + 1 || index < 0) {
      return null;
    } else {
      return _objects[index];
    }
  }

  @override
  T? maybeGet<T>(covariant String key) {
    try {
      var arg = _objects[key];
      if (arg == null) {
        return null;
      }
      if (T is int) {
        return int.parse(arg) as T;
      } else if (T is double) {
        return double.parse(arg) as T;
      } else if (T is num) {
        return num.parse(arg) as T;
      } else {
        return arg as T;
      }
    } catch (_) {
      return null;
    }
  }

  @override
  T get<T>(covariant String key) {
    return maybeGet<T>(key) ?? _argumentNotFound(key);
  }
}

class MessageNewContext extends MessageNewObject {
  MessageNewContext({
    required MessageNewObject event,
    required this.api,
    required this.args,
  }) : super.fromMap(event.body);

  final API api;
  final MessageArgs args;

  Future<int> answer({
    int? user_id,
    int? random_id,
    int? peer_id,
    List<dynamic>? peer_ids,
    String? domain,
    int? chat_id,
    List<dynamic>? user_ids,
    String? message,
    dynamic lat,
    dynamic long,
    String? attachment,
    int? reply_to,
    List<dynamic>? forward_messages,
    String? forward,
    int? sticker_id,
    int? group_id,
    KeyboardBuilder? keyboard,
    String? template,
    String? payload,
    String? content_source,
    bool? dont_parse_links,
    bool? disable_mentions,
    String? intent,
    int? subscribe_id,
  }) async {
    var response = await api.messages.send(
        user_id: user_id,
        peer_id: peer_id ?? this.message.peerId,
        random_id: random_id,
        user_ids: user_ids,
        peer_ids: peer_ids,
        domain: domain,
        chat_id: chat_id,
        message: message,
        lat: lat,
        long: long,
        attachment: attachment,
        reply_to: reply_to,
        forward_messages: forward_messages,
        forward: forward,
        sticker_id: sticker_id,
        group_id: group_id,
        keyboard: keyboard,
        template: template,
        payload: payload,
        content_source: content_source,
        dont_parse_links: dont_parse_links,
        disable_mentions: disable_mentions,
        intent: intent,
        subscribe_id: subscribe_id);
    return response['response'];
  }

  Future<int> reply({
    int? user_id,
    int? random_id,
    int? peer_id,
    List<dynamic>? peer_ids,
    String? domain,
    int? chat_id,
    List<dynamic>? user_ids,
    String? message,
    dynamic lat,
    dynamic long,
    String? attachment,
    int? reply_to,
    List<dynamic>? forward_messages,
    String? forward,
    int? sticker_id,
    int? group_id,
    KeyboardBuilder? keyboard,
    String? template,
    String? payload,
    String? content_source,
    bool? dont_parse_links,
    bool? disable_mentions,
    String? intent,
    int? subscribe_id,
  }) async {
    var response = await api.messages.send(
        user_id: user_id,
        peer_id: peer_id ?? this.message.peerId,
        random_id: random_id,
        user_ids: user_ids,
        peer_ids: peer_ids,
        domain: domain,
        chat_id: chat_id,
        message: message,
        lat: lat,
        long: long,
        attachment: attachment,
        reply_to: reply_to ?? this.message.id,
        forward_messages: forward_messages,
        forward: forward,
        sticker_id: sticker_id,
        group_id: group_id,
        keyboard: keyboard,
        template: template,
        payload: payload,
        content_source: content_source,
        dont_parse_links: dont_parse_links,
        disable_mentions: disable_mentions,
        intent: intent,
        subscribe_id: subscribe_id);
    return response['response'];
  }
}

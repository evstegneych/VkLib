import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';
import 'package:vklib/src/core/utils/keyboard.dart';

class MessageNewContext extends MessageNewObject {
  MessageNewContext({required MessageNewObject event, required API api})
      : api = api,
        super.fromMap(event.body);
  late API api;

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

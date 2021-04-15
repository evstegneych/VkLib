import 'package:vklib/src/objects/other/base_responses.dart';

class MessagesGetById extends BaseApiResponse {
  MessagesGetById(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    count = body['count'];
    for (var item in body['items']) {
      items.add(MessagesMessage(item));
    }
  }

  late int count;
  late List<MessagesMessage> items = [];
}

class MessagesMessage extends BaseApiResponse {
  MessagesMessage(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    date = body['date'];
    fromId = body['from_id'];
    id = body['id'];
    out = body['out'];
    peerId = body['peer_id'];
    text = body['text'];
    conversationMessageId = body['conversation_message_id'];

    for (var item in body['fwd_messages'] ?? []) {
      fwdMessages.add(MessagesFwdMessage(item));
    }
    for (var item in body['attachments']) {
      attachments.add(item);
    }
    important = body['important'];
    randomId = body['random_id'];
    isHidden = body['is_hidden'];
    conversationKeyboard = body['conversation_keyboard'];
  }

  int? date;

  int? fromId;

  int? id;

  int? out;

  int? peerId;

  String? text;

  int? conversationMessageId;

  List<MessagesFwdMessage> fwdMessages = [];

  List<Map> attachments = [];

  bool? important;

  int? randomId;

  bool? isHidden;

  dynamic conversationKeyboard;
}

class MessagesFwdMessage extends BaseApiResponse {
  MessagesFwdMessage(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    date = body['date'];
    fromId = body['from_id'];
    id = body['id'];
    peerId = body['peer_id'];
    text = body['text'];
    conversationMessageId = body['conversation_message_id'];

    for (var item in body['fwd_messages'] ?? []) {
      fwdMessages.add(MessagesFwdMessage(item));
    }
    for (var item in body['attachments']) {
      attachments.add(item);
    }
  }

  int? date;

  int? fromId;

  String? text;

  List<Map> attachments = [];

  List<MessagesFwdMessage> fwdMessages = [];

  int? conversationMessageId;

  int? peerId;

  int? id;
}

// class Attachments {
//   final Map<String, dynamic>? _attachments;
//
//   Attachments(this._attachments);
// }
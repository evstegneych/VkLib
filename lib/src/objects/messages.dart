import 'package:vklib/src/objects/other/base_responses.dart';

class BaseMessagesMessage extends BaseResponse {
  BaseMessagesMessage.fromMap(Map<String, dynamic> _map) : super.fromMap(_map) {
    build();
  }

  BaseMessagesMessage.fromJson(String _json) : super.fromJson(_json) {
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
      fwdMessages!.add(MessagesFwdMessage(item));
    }
  }

  int? date;

  int? fromId;

  int? id;

  int? out;

  int? peerId;

  String? text;

  int? conversationMessageId;

  List<MessagesFwdMessage>? fwdMessages;
}

class MessagesMessage {
  final Map<String, dynamic>? _message;

  MessagesMessage(this._message);

  int? get date => _message!['date'];

  int? get fromId => _message!['from_id'];

  int? get id => _message!['id'];

  int? get out => _message!['out'];

  int? get peerId => _message!['peer_id'];

  String? get text => _message!['text'];

  int? get conversationMessageId => _message!['conversation_message_id'];

  List<MessagesFwdMessage>? get fwdMessages {
    var _fwdMessages = <MessagesFwdMessage>[];
    for (var item in _message!['fwd_messages'] ?? []) {
      _fwdMessages.add(MessagesFwdMessage(item));
    }
    return _fwdMessages;
  }

  bool? get important => _message!['important'];

  int? get randomId => _message!['random_id'];

  List<Map>? get attachments {
    var _attachments = <Map>[];
    for (var item in _message!['attachments']) {
      _attachments.add(item);
    }
    return _attachments;
  }

  bool? get isHidden => _message!['is_hidden'];

  dynamic get conversationKeyboard => _message!['conversation_keyboard'];
}

class MessagesFwdMessage {
  final Map<String, dynamic>? _fwdMessage;

  MessagesFwdMessage(this._fwdMessage);

  int? get date => _fwdMessage!['date'];

  int? get fromId => _fwdMessage!['from_id'];

  String? get text => _fwdMessage!['text'];

  List<Map>? get attachments {
    var _attachments = <Map>[];
    for (var item in _fwdMessage!['attachments']) {
      _attachments.add(item);
    }
    return _attachments;
  }

  List<MessagesFwdMessage>? get fwdMessages {
    var _fwdMessages = <MessagesFwdMessage>[];
    for (var item in _fwdMessage!['fwd_messages'] ?? []) {
      _fwdMessages.add(MessagesFwdMessage(item));
    }
    return _fwdMessages;
  }

  int? get conversationMessageId => _fwdMessage!['conversation_message_id'];

  int? get peerId => _fwdMessage!['peer_id'];

  int? get id => _fwdMessage!['id'];
}

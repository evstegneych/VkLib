class MessageNewContext {
  static const String type = 'message_new';
  late final Map<String, dynamic> _messageNew;

  MessageNewContext(this._messageNew);

  MessageNewObject? get object => MessageNewObject(_messageNew['object']);

  @deprecated
  Message? get message => Message(_messageNew);
}

class MessageNewObject {
  late final Map<String, dynamic> _object;

  MessageNewObject(this._object);

  Message get message => Message(_object['message']);

  ClientInfo get clientInfo => ClientInfo(_object['client_info']);
}

class ClientInfo {
  late final Map<String, dynamic> _clientInfo;

  ClientInfo(object);

  List<String>? get buttonActions => _clientInfo['button_actions'];

  bool? get fromId => _clientInfo['keyboard'];

  int? get InlineKeyboard => _clientInfo['inline_keyboard'];

  int? get Carousel => _clientInfo['carousel'];

  int? get langId => _clientInfo['lang_id'];
}

class Message {
  final Map<String, dynamic>? _message;

  Message(this._message);

  int? get date => _message!['date'];

  int? get fromId => _message!['from_id'];

  int? get id => _message!['id'];

  int? get out => _message!['out'];

  int? get peerId => _message!['peer_id'];

  String? get text => _message!['text'];

  int? get conversationMessageId => _message!['conversation_message_id'];

  List<FwdMessage>? get fwdMessages {
    var _fwdMessages = <FwdMessage>[];
    for (var item in _message!['fwd_messages'] ?? []) {
      _fwdMessages.add(FwdMessage(item));
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

class FwdMessage {
  final Map<String, dynamic>? _fwdMessage;

  FwdMessage(this._fwdMessage);

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

  List<FwdMessage>? get fwdMessages {
    var _fwdMessages = <FwdMessage>[];
    for (var item in _fwdMessage!['fwd_messages'] ?? []) {
      _fwdMessages.add(FwdMessage(item));
    }
    return _fwdMessages;
  }

  int? get conversationMessageId => _fwdMessage!['conversation_message_id'];

  int? get peerId => _fwdMessage!['peer_id'];

  int? get id => _fwdMessage!['id'];
}

// class Attachments {
//   final Map<String, dynamic>? _attachments;
//
//   Attachments(this._attachments);
// }

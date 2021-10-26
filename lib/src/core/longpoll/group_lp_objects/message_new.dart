import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/event.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/base_lp_object.dart';

class MessageNewObject extends BaseLpObject {
  late final Json _object;

  MessageNewObject(GroupEvent _messageNew)
      : _object = _messageNew.object,
        super('message_new');

  MessageNewObject.fromMap(Json event)
      : _object = event,
        super('message_new');

  Json get body => _object;

  Message get message => Message(_object['message']);

  bool get isOutbox => message.out == 1;

  bool get isInbox => !isOutbox;

  double? get chatId => isChat ? message.peerId! - 2e9 : null;

  bool get isDM => chatId == message.peerId;

  bool get isUser => message.fromId! > 0;

  bool get isGroup => !isUser;

  bool get isFromUser => isUser && isDM;

  bool get isFromGroup => isGroup && isDM;

  bool get isChat => message.peerId! > 2e9;

  bool get hasText => message.text != null;

  bool get hasReplyMessage => message.replyMessage.isEmpty;

  bool? get isHidden => message.isHidden;

  bool get hasForwards => message.fwdMessages.isNotEmpty;

  bool get hasMessagePayload => message.payload != null;

  bool hasAttachments() => message.attachments.isNotEmpty;

  ClientInfo get clientInfo => ClientInfo(_object['client_info']);
}

class Message {
  final Map<String, dynamic> _message;

  Json get body => _message;

  Message(this._message);

  int? get date => _message['date'];

  int? get fromId => _message['from_id'];

  Json? get payload => _message['payload'];

  int? get id => _message['id'];

  int? get out => _message['out'];

  int? get peerId => _message['peer_id'];

  String? get text => _message['text'];

  int? get conversationMessageId => _message['conversation_message_id'];

  List<FwdMessage> get fwdMessages {
    var _fwdMessages = <FwdMessage>[];
    for (var item in _message['fwd_messages'] ?? []) {
      _fwdMessages.add(FwdMessage(item));
    }
    return _fwdMessages;
  }

  FwdMessage get replyMessage => FwdMessage(_message['reply_message'] ?? {});

  bool? get important => _message['important'];

  int? get randomId => _message['random_id'];

  List<Map> get attachments {
    var _attachments = <Map>[];
    for (var item in _message['attachments']) {
      _attachments.add(item);
    }
    return _attachments;
  }

  bool? get isHidden => _message['is_hidden'];

  dynamic get conversationKeyboard => _message['conversation_keyboard'];
}

class FwdMessage {
  final Map<String, dynamic> _fwdMessage;

  bool get isEmpty {
    if (_fwdMessage.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool get isNotEmpty => !isEmpty;

  FwdMessage(this._fwdMessage);

  int? get date => _fwdMessage['date'];

  int? get fromId => _fwdMessage['from_id'];

  String? get text => _fwdMessage['text'];

  List<Map>? get attachments {
    var _attachments = <Map>[];
    for (var item in _fwdMessage['attachments']) {
      _attachments.add(item);
    }
    return _attachments;
  }

  List<FwdMessage> get fwdMessages {
    var _fwdMessages = <FwdMessage>[];
    for (var item in _fwdMessage['fwd_messages'] ?? []) {
      _fwdMessages.add(FwdMessage(item));
    }
    return _fwdMessages;
  }

  int? get conversationMessageId => _fwdMessage['conversation_message_id'];

  int? get peerId => _fwdMessage['peer_id'];

  int? get id => _fwdMessage['id'];
}

// class Attachments {
//   final Map<String, dynamic>? _attachments;
//
//   Attachments(this._attachments);
// }

class ClientInfo {
  late final Map<String, dynamic> _clientInfo;

  ClientInfo(object);

  List<String>? get buttonActions => _clientInfo['button_actions'];

  bool? get fromId => _clientInfo['keyboard'];

  int? get InlineKeyboard => _clientInfo['inline_keyboard'];

  int? get Carousel => _clientInfo['carousel'];

  int? get langId => _clientInfo['lang_id'];
}

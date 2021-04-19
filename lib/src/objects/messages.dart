import 'package:vklib/src/objects/other/base_responses.dart';

class MessageGetChatPreview extends BaseApiResponse {
  MessageGetChatPreview(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    response = _MessageGetChatPreview(body['response']);
  }

  late _MessageGetChatPreview response;
}

class _MessageGetChatPreview extends BaseApiResponse {
  _MessageGetChatPreview(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  void build() {
    preview = _MessageGetChatPreviewPreview(body['preview']);
    for (var item in body['profiles'] ?? []) {
      profiles.add(_MessageGetChatPreviewProfiles(item));
    }
  }

  late _MessageGetChatPreviewPreview preview;
  late List<_MessageGetChatPreviewProfiles> profiles = [];
}

class _MessageGetChatPreviewProfiles extends BaseApiResponse {
  _MessageGetChatPreviewProfiles(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  void build() {
    first_name = body['first_name'];
    last_name = body['last_name'];
    id = body['id'];
    can_access_closed = body['can_access_closed'];
    is_closed = body['is_closed'];
  }

  late String first_name;
  late String last_name;

  late int id;
  late bool can_access_closed;
  late bool is_closed;
}

class _MessageGetChatPreviewPreview extends BaseApiResponse {
  _MessageGetChatPreviewPreview(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  void build() {
    preview = body['preview'];
  }

  late Map<String, dynamic> preview;
}

class MessagesDeleteConversation extends BaseApiResponse {
  MessagesDeleteConversation(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    response = _MessagesDeleteConversation(body['response']);
  }

  late _MessagesDeleteConversation response;
}

class _MessagesDeleteConversation extends BaseApiResponse {
  _MessagesDeleteConversation(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    last_deleted_id = body['last_deleted_id'];
  }

  late int last_deleted_id;
}

class MessagesDelete extends BaseApiResponse {
  MessagesDelete(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    response = body['response'];
  }

  late Map<String, int> response;
}

class MessagesCreateChat extends BaseApiResponse {
  MessagesCreateChat(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    response = body['response'];
  }

  late int response;
}

class MessagesAllowMessagesFromGroup extends BaseApiResponse {
  MessagesAllowMessagesFromGroup(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    response = body['response'];
  }

  late int response;
}

class MessagesAddChatUser extends BaseApiResponse {
  MessagesAddChatUser(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    response = body['response'];
  }

  late int response;
}

class MessagesGetById extends BaseApiResponse {
  MessagesGetById(Map<String, dynamic> _map) : super(_map) {
    build();
  }

  @override
  Map<String, dynamic> get body => super.body;

  void build() {
    response = _MessagesGetById(body['response']);
  }

  late _MessagesGetById response;
}

class _MessagesGetById extends BaseApiResponse {
  _MessagesGetById(Map<String, dynamic> _map) : super(_map) {
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

import 'package:vklib/src/objects/other/base_responses.dart';

class MessageGetChatPreview extends BaseApiResponse {
  MessageGetChatPreview(Map<String, dynamic> _map) : super(_map) {
    response = _MessageGetChatPreview(body['response']);
  }

  @override
  Map<String, dynamic> get body => super.body;

  late _MessageGetChatPreview response;
}

class _MessageGetChatPreview extends BaseApiResponse {
  _MessageGetChatPreview(Map<String, dynamic> _map) : super(_map) {
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
    firstName = body['first_name'];
    lastName = body['last_name'];
    id = body['id'];
    canAccessClosed = body['can_access_closed'];
    isClosed = body['is_closed'];
  }

  late String firstName;
  late String lastName;

  late int id;
  late bool canAccessClosed;
  late bool isClosed;
}

class _MessageGetChatPreviewPreview extends BaseApiResponse {
  _MessageGetChatPreviewPreview(Map<String, dynamic> _map) : super(_map) {
    adminId = body['admin_id'];
    membersCount = body['members_count'];
    members = body['members'];
    title = body['title'];
    photo = _MessageGetChatPreviewPreviewPhoto(body['photo']);
    localId = body['local_id'];
    joined = body['joined'];
    chat_settings =
        _MessageGetChatPreviewPreviewChatSettings(body['chat_settings']);
  }

  int? adminId;
  late int membersCount;
  late List<int> members;
  late String title;
  late _MessageGetChatPreviewPreviewPhoto photo;
  late int localId;
  late bool joined;
  late _MessageGetChatPreviewPreviewChatSettings chat_settings;
}

class _MessageGetChatPreviewPreviewChatSettings extends BaseApiResponse {
  _MessageGetChatPreviewPreviewChatSettings(Map<String, dynamic> _map)
      : super(_map) {
    ownerId = body['owner_id'];
    title = body['title'];
    state = body['state'];
    acl = _MessagesGetChatPreviewPreviewChatSettingsAcl(body['acl']);
    isGroupChannel = body['is_group_channel'];
    isDisappearing = body['is_disappearing'];
    isService = body['is_service'];
  }

  late int adminId;
  late int ownerId;
  late String title;
  late String state;
  late _MessagesGetChatPreviewPreviewChatSettingsAcl acl;
  late List<int> activeId = [];
  late bool isGroupChannel;
  late _MessagesGetChatPreviewPreviewChatSettingsAclPermission permission;
  late bool isDisappearing;
  late bool isService;
}

class _MessagesGetChatPreviewPreviewChatSettingsAclPermission
    extends BaseApiResponse {
  _MessagesGetChatPreviewPreviewChatSettingsAclPermission(
      Map<String, dynamic> _map)
      : super(_map) {
    invite = body['invite'];
    changeInfo = body['change_info'];
    changePin = body['change_pin'];
    useMassMentions = body['use_mass_mentions'];
    seeInviteLink = body['see_invite_link'];
    call = body['call'];
    changeAdmins = body['change_admins'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late String invite;
  late String changeInfo;
  late String changePin;
  late String useMassMentions;
  late String seeInviteLink;
  late String call;
  late String changeAdmins;
}

class _MessagesGetChatPreviewPreviewChatSettingsAcl extends BaseApiResponse {
  _MessagesGetChatPreviewPreviewChatSettingsAcl(Map<String, dynamic> _map)
      : super(_map) {
    can_change_info = body['can_change_info'];
    can_change_invite_link = body['can_change_invite_link'];
    can_change_pin = body['can_change_pin'];
    can_invite = body['can_invite'];
    can_promote_users = body['can_promote_users'];
    can_see_invite_link = body['can_see_invite_link'];
    can_moderate = body['can_moderate'];
    can_copy_chat = body['can_copy_chat'];
    can_call = body['can_call'];
    can_use_mass_mentions = body['can_use_mass_mentions'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late bool can_change_info;
  late bool can_change_invite_link;
  late bool can_change_pin;
  late bool can_invite;
  late bool can_promote_users;
  late bool can_see_invite_link;
  late bool can_moderate;
  late bool can_copy_chat;
  late bool can_call;
  late bool can_use_mass_mentions;
}

class _MessageGetChatPreviewPreviewPhoto extends BaseApiResponse {
  _MessageGetChatPreviewPreviewPhoto(Map<String, dynamic> _map) : super(_map) {
    photo50 = body['photo50'];
    photo100 = body['photo100'];
    photo200 = body['photo200'];
  }

  int? admin_id;
  late String photo50;
  late String photo100;
  late String photo200;
}

class MessagesDeleteConversation extends BaseApiResponse {
  MessagesDeleteConversation(Map<String, dynamic> _map) : super(_map) {
    response = _MessagesDeleteConversation(body['response']);
  }

  @override
  Map<String, dynamic> get body => super.body;

  late _MessagesDeleteConversation response;
}

class _MessagesDeleteConversation extends BaseApiResponse {
  _MessagesDeleteConversation(Map<String, dynamic> _map) : super(_map) {
    last_deleted_id = body['last_deleted_id'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late int last_deleted_id;
}

class MessagesDelete extends BaseApiResponse {
  MessagesDelete(Map<String, dynamic> _map) : super(_map) {
    response = body['response'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late Map<String, int> response;
}

class MessagesCreateChat extends BaseApiResponse {
  MessagesCreateChat(Map<String, dynamic> _map) : super(_map) {
    response = body['response'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late int response;
}

class MessagesAllowMessagesFromGroup extends BaseApiResponse {
  MessagesAllowMessagesFromGroup(Map<String, dynamic> _map) : super(_map) {
    response = body['response'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late int response;
}

class MessagesAddChatUser extends BaseApiResponse {
  MessagesAddChatUser(Map<String, dynamic> _map) : super(_map) {
    response = body['response'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late int response;
}

class MessagesGetById extends BaseApiResponse {
  MessagesGetById(Map<String, dynamic> _map) : super(_map) {
    response = _MessagesGetById(body['response']);
  }

  @override
  Map<String, dynamic> get body => super.body;

  late _MessagesGetById response;
}

class _MessagesGetById extends BaseApiResponse {
  _MessagesGetById(Map<String, dynamic> _map) : super(_map) {
    count = body['count'];
    for (var item in body['items']) {
      items.add(MessagesMessage(item));
    }
  }

  @override
  Map<String, dynamic> get body => super.body;

  late int count;
  late List<MessagesMessage> items = [];
}

class MessagesMessage extends BaseApiResponse {
  MessagesMessage(Map<String, dynamic> _map) : super(_map) {
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

  @override
  Map<String, dynamic> get body => super.body;

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

  @override
  Map<String, dynamic> get body => super.body;

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

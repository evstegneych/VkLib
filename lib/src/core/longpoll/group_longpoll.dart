import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/base/longpoll.dart';
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';
import 'package:vklib/src/core/longpoll/types.dart';

import 'group_lp_objects/message_allow.dart';
import 'group_lp_objects/message_deny.dart';

typedef _baseHandlerType<T> = LongPollEventHandler<StandartGroupCommand<T>>;

typedef MessageEditContext = MessageNewObject;
typedef MessageReplyContext = MessageNewObject;

typedef _MessageNewHandlerType = _baseHandlerType<MessageNewObject>;
typedef _MessageAllowHandlerType = _baseHandlerType<MessageAllowObject>;
typedef _MessageDenyHandlerType = _baseHandlerType<MessageDenyObject>;
typedef _MessageEditHandlerType = _baseHandlerType<MessageEditContext>;
typedef _MessageReplyHandlerType = _baseHandlerType<MessageReplyContext>;

class GroupLongPoll extends BaseGroupLongPoll {
  _MessageNewHandlerType? _messageNewHandler;
  _MessageAllowHandlerType? _messageAllowHandler;
  _MessageDenyHandlerType? _messageDenyHandler;
  _MessageEditHandlerType? _messageEditHandler;
  _MessageReplyHandlerType? _messageReplyHandler;

  GroupLongPoll(API api) : super(api: api);

  GroupLongPoll.withGroupId(API api, int _groupId)
      : super(api: api, group_id: _groupId);

  void messageNew(StandartGroupCommand<MessageNewObject> func) {
    _messageNewHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.messageNew, func);
  }

  void messageAllow(Future<void> Function(MessageAllowObject) func) {
    _messageAllowHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.messageAllow, func);
  }

  void messageDeny(Future<void> Function(MessageDenyObject) func) {
    _messageDenyHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.messageDeny, func);
  }

  void messageEdit(Future<void> Function(MessageEditContext) func) {
    _messageEditHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.messageEdit, func);
  }

  void messageReply(Future<void> Function(MessageReplyContext) func) {
    _messageReplyHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.messageReply, func);
  }

  void start() async {
    await for (var event in super.runPolling()) {
      switch (event.content['type']) {
        case 'message_new':
          await _messageNewHandler?.callback(MessageNewObject(event));
          break;

        case 'message_allow':
          await _messageAllowHandler?.callback(MessageAllowObject(event));
          break;

        case 'message_deny':
          await _messageDenyHandler?.callback(MessageDenyObject(event));
          break;

        case 'message_edit':
          await _messageEditHandler?.callback(MessageEditContext(event));
          break;

        case 'message_reply':
          await _messageReplyHandler?.callback(MessageReplyContext(event));
          break;
      }
    }
  }
}

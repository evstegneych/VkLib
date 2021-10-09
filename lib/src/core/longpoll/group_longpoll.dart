import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/base/longpoll.dart';
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/longpoll/group_context/message_new.dart';
import 'package:vklib/src/core/longpoll/types.dart';

import 'group_context/message_allow.dart';
import 'group_context/message_deny.dart';

typedef _baseHandlerType<T> = LongPollEventHandler<StandartGroupCommand<T>>;

typedef MessageEditContext = MessageNewContext;
typedef MessageReplyContext = MessageNewContext;

typedef _MessageNewHandlerType = _baseHandlerType<MessageNewContext>;
typedef _MessageAllowHandlerType = _baseHandlerType<MessageAllowContext>;
typedef _MessageDenyHandlerType = _baseHandlerType<MessageDenyContext>;
typedef _MessageEditHandlerType = _baseHandlerType<MessageEditContext>;
typedef _MessageReplyHandlerType = _baseHandlerType<MessageReplyContext>;

class GroupLongPoll extends BaseGroupLongPoll {
  _MessageNewHandlerType? messageNewHandler;
  _MessageAllowHandlerType? messageAllowHandler;
  _MessageDenyHandlerType? messageDenyHandler;
  _MessageEditHandlerType? messageEditHandler;
  _MessageReplyHandlerType? messageReplyHandler;

  GroupLongPoll(API api) : super(api: api);

  GroupLongPoll.withGroupId(API api, int _groupId)
      : super(api: api, group_id: _groupId);

  void messageNew(StandartGroupCommand<MessageNewContext> func) {
    messageNewHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.MessageNew, func);
  }

  void messageAllow(Future<void> Function(MessageAllowContext) func) {
    messageAllowHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.MessageAllow, func);
  }

  void messageDeny(Future<void> Function(MessageDenyContext) func) {
    messageDenyHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.MessageDeny, func);
  }

  void messageEdit(Future<void> Function(MessageEditContext) func) {
    messageEditHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.MessageEdit, func);
  }

  void messageReply(Future<void> Function(MessageReplyContext) func) {
    messageReplyHandler =
        LongPollEventHandler(GroupLongPollEventsEnum.MessageReply, func);
  }

  void start() async {
    await for (var event in super.runPolling()) {
      switch (event.content['type']) {
        case 'message_new':
          await messageNewHandler?.callback(MessageNewContext(event));
          break;

        case 'message_allow':
          await messageAllowHandler?.callback(MessageAllowContext(event));
          break;

        case 'message_deny':
          await messageDenyHandler?.callback(MessageDenyContext(event));
          break;

        case 'message_edit':
          await messageEditHandler?.callback(MessageEditContext(event));
          break;

        case 'message_reply':
          await messageReplyHandler?.callback(MessageReplyContext(event));
          break;
      }
    }
  }
}

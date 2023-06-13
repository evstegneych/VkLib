import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/base/longpoll.dart';
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/longpoll/group_lp_objects/message_new.dart';
import 'package:vklib/src/core/longpoll/types.dart';

import 'group_lp_objects/message_allow.dart';
import 'group_lp_objects/message_deny.dart';

typedef _baseHandlerType<T> = LongPollEventHandler<StandartGroupCommand<T>>;

typedef MessageEditObject = MessageNewObject;
typedef MessageReplyObject = MessageNewObject;

typedef _MessageHandlerType = _baseHandlerType<MessageNewObject>;

typedef _MessageNewHandlerType = _baseHandlerType<MessageNewObject>;
typedef _MessageAllowHandlerType = _baseHandlerType<MessageAllowObject>;
typedef _MessageDenyHandlerType = _baseHandlerType<MessageDenyObject>;
typedef _MessageEditHandlerType = _baseHandlerType<MessageEditObject>;
typedef _MessageReplyHandlerType = _baseHandlerType<MessageReplyObject>;

class GroupLongPoll extends BaseGroupLongPoll {
  _MessageHandlerType? _messageHandler;
  _MessageNewHandlerType? _messageNewHandler;
  _MessageAllowHandlerType? _messageAllowHandler;
  _MessageDenyHandlerType? _messageDenyHandler;
  _MessageEditHandlerType? _messageEditHandler;
  _MessageReplyHandlerType? _messageReplyHandler;

  GroupLongPoll(API api) : super(api: api);

  GroupLongPoll.withGroupId(API api, int _groupId)
      : super(api: api, group_id: _groupId);

  void message(StandartGroupCommand<MessageNewObject> func) {
    _messageHandler = LongPollEventHandler(func);
  }

  void messageNew(StandartGroupCommand<MessageNewObject> func) {
    _messageNewHandler = LongPollEventHandler(func);
  }

  void messageAllow(Future<void> Function(MessageAllowObject) func) {
    _messageAllowHandler = LongPollEventHandler(func);
  }

  void messageDeny(Future<void> Function(MessageDenyObject) func) {
    _messageDenyHandler = LongPollEventHandler(func);
  }

  void messageEdit(Future<void> Function(MessageEditObject) func) {
    _messageEditHandler = LongPollEventHandler(func);
  }

  void messageReply(Future<void> Function(MessageReplyObject) func) {
    _messageReplyHandler = LongPollEventHandler(func);
  }

  void start() async {
    await for (var event in super.runPolling()) {
      await _messageHandler?.callback(MessageNewObject(event));

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
          await _messageEditHandler?.callback(MessageEditObject(event));
          break;

        case 'message_reply':
          await _messageReplyHandler?.callback(MessageReplyObject(event));
          break;
      }
    }
  }
}

import 'package:vklib/src/core/longpoll/types.dart';

class GroupLongPollEventsEnum {
  static BaseEventType get MessageNew => BaseEventType('message_new');

  static BaseEventType get MessageEvent => BaseEventType('message_event');

  static BaseEventType get MessageEdit => BaseEventType('message_edit');

  static BaseEventType get MessageReply => BaseEventType('message_reply');

  static BaseEventType get MessageAllow => BaseEventType('message_allow');

  static BaseEventType get MessageDeny => BaseEventType('message_deny');
}

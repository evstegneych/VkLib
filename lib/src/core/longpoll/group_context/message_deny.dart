import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/event.dart';

import 'base_context.dart';

class MessageDenyContext extends BaseContext {
  late final Json _object;

  MessageDenyContext(GroupEvent _messageNew)
      : _object = _messageNew.object,
        super('message_deny');

  Json get body => _object;

  int get userId => _object['user_id'];
}

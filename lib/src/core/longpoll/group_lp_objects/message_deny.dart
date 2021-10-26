import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/event.dart';

import 'base_lp_object.dart';

class MessageDenyObject extends BaseLpObject {
  late final Json _object;

  MessageDenyObject(GroupEvent _messageNew)
      : _object = _messageNew.object,
        super('message_deny');

  Json get body => _object;

  int get userId => _object['user_id'];
}

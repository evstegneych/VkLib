import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/event.dart';

import 'base_lp_object.dart';

class MessageAllowObject extends BaseLpObject {
  late final Json _object;

  MessageAllowObject(GroupEvent _messageNew)
      : _object = _messageNew.object,
        super('message_allow');

  Json get body => _object;

  int get userId => _object['user_id'];

  String get key => _object['key'];
}

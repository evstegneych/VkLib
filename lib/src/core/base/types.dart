import 'package:vklib/src/core/event.dart';

typedef Json = Map<String, dynamic>;
typedef JsonString = Map<String, String>;
typedef StandartGroupCommand = Future<dynamic> Function(GroupEvent);
typedef StandartUserCommand = Future<dynamic> Function(UserEvent);

import 'package:vklib/src/core/event.dart';

typedef Json = Map<String, dynamic>;
typedef JsonString = Map<String, String>;
typedef StandartGroupCommand<T> = Future<dynamic> Function(T);
typedef StandartUserCommand = Future<dynamic> Function(UserEvent);

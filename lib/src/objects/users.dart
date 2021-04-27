import 'package:vklib/src/objects/other/base_responses.dart';

class UsersUser extends BaseApiResponse {
  UsersUser(Map<String, dynamic> _map) : super(_map) {
    firstName = body['first_name'];
    lastName = body['last_name'];
    id = body['id'];
    canAccessClosed = body['can_access_closed'];
    isClosed = body['is_closed'];
    sex = body['sex'];
    screenName = body['screen_name'];
    photo50 = body['photo_50'];
    photo100 = body['photo_100'];
    onlineInfo = _UsersUserOnlineInfo(body['response']);
    online = body['online'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late String firstName;
  late String lastName;
  late int id;
  late bool canAccessClosed;
  late bool isClosed;
  late int sex;
  late String screenName;
  late String photo50;
  late String photo100;
  late _UsersUserOnlineInfo onlineInfo;
  late int online;
}

class _UsersUserOnlineInfo extends BaseApiResponse {
  _UsersUserOnlineInfo(Map<String, dynamic> _map) : super(_map) {
    visible = body['visible'];
    lastSeen = body['last_seen'];
    isOnline = body['is_online'];
    isMobile = body['is_mobile'];
  }

  @override
  Map<String, dynamic> get body => super.body;

  late bool visible;
  late int lastSeen;
  late bool isOnline;
  late bool isMobile;
}

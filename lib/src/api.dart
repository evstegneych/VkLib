import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:vklib/src/exception.dart';
import 'package:vklib/src/methods/Streaming.dart';
import 'package:vklib/src/methods/account.dart';
import 'package:vklib/src/methods/ads.dart';
import 'package:vklib/src/methods/apps.dart';
import 'package:vklib/src/methods/board.dart';
import 'package:vklib/src/methods/database.dart';
import 'package:vklib/src/methods/docs.dart';
import 'package:vklib/src/methods/fave.dart';
import 'package:vklib/src/methods/friends.dart';
import 'package:vklib/src/methods/gifts.dart';
import 'package:vklib/src/methods/groups.dart';
import 'package:vklib/src/methods/leads.dart';
import 'package:vklib/src/methods/likes.dart';
import 'package:vklib/src/methods/market.dart';
import 'package:vklib/src/methods/messages.dart';
import 'package:vklib/src/methods/newsfeed.dart';
import 'package:vklib/src/methods/notes.dart';
import 'package:vklib/src/methods/notifications.dart';
import 'package:vklib/src/methods/orders.dart';
import 'package:vklib/src/methods/pages.dart';
import 'package:vklib/src/methods/photos.dart';
import 'package:vklib/src/methods/polls.dart';
import 'package:vklib/src/methods/prettyCards.dart';
import 'package:vklib/src/methods/search.dart';
import 'package:vklib/src/methods/secure.dart';
import 'package:vklib/src/methods/stats.dart';
import 'package:vklib/src/methods/status.dart';
import 'package:vklib/src/methods/storage.dart';
import 'package:vklib/src/methods/stories.dart';
import 'package:vklib/src/methods/users.dart';
import 'package:vklib/src/methods/utils.dart';
import 'package:vklib/src/methods/video.dart';
import 'package:vklib/src/methods/wall.dart';
import 'package:vklib/src/methods/widgets.dart';
import 'package:vklib/src/objects/other/params.dart';
import 'package:vklib/vklib.dart';

enum TokenOwner {
  USER,
  GROUP,
  UNKNOWN,
}

class API {
  final String _baseUrl = 'https://api.vk.com/method';
  late TokenOwner _token_owner;
  late VkLib _vk;
  var clientSession = http.Client();

  late Account account;
  late Ads ads;
  late Apps apps;
  late Board board;
  late Database database;
  late Docs docs;
  late Fave fave;
  late Friends friends;
  late Gifts gifts;
  late Groups groups;
  late Leads leads;
  late Likes likes;
  late Market market;
  late Messages messages;
  late Newsfeed newsfeed;
  late Notes notes;
  late Notifications notifications;
  late Orders orders;
  late Pages pages;
  late Photos photos;
  late Polls polls;
  late PrettyCards prettyCards;
  late Search search;
  late Secure secure;
  late Stats stats;
  late Status status;
  late Storage storage;
  late Stories stories;
  late Streaming streaming;
  late Users users;
  late Utils utils;
  late Video video;
  late Wall wall;
  late Widgets widgets;

  API(VkLib vk, {token_owner = TokenOwner.UNKNOWN}) {
    _vk = vk;
    _token_owner = token_owner;

    account = Account(this);
    ads = Ads(this);
    apps = Apps(this);
    board = Board(this);
    database = Database(this);
    docs = Docs(this);
    fave = Fave(this);
    friends = Friends(this);
    gifts = Gifts(this);
    groups = Groups(this);
    leads = Leads(this);
    likes = Likes(this);
    market = Market(this);
    messages = Messages(this);
    newsfeed = Newsfeed(this);
    notes = Notes(this);
    notifications = Notifications(this);
    orders = Orders(this);
    pages = Pages(this);
    photos = Photos(this);
    polls = Polls(this);
    prettyCards = PrettyCards(this);
    search = Search(this);
    secure = Secure(this);
    stats = Stats(this);
    status = Status(this);
    storage = Storage(this);
    stories = Stories(this);
    streaming = Streaming(this);
    users = Users(this);
    utils = Utils(this);
    video = Video(this);
    wall = Wall(this);
    widgets = Widgets(this);
  }

  Future<TokenOwner> define_token_owner() async {
    if (_token_owner != TokenOwner.UNKNOWN) {
      return _token_owner;
    }
    var user = await users.get();
    if (user.data['response'].length != 0) {
      _token_owner = TokenOwner.USER;
    } else {
      _token_owner = TokenOwner.GROUP;
    }
    return _token_owner;
  }

  // async def define_token_owner(self) -> TokenOwner:
  //   if self._token_owner != TokenOwner.UNKNOWN:
  //       return self._token_owner
  //   seemed_user = await self.use_cache().method("users.get")
  //   if seemed_user:
  //       self._token_owner = TokenOwner.USER
  //   else:
  //       self._token_owner = TokenOwner.GROUP
  //
  //   self._update_requests_delay()
  //   return self._token_owner

  Future<Params> request(
    String method,
    Map<String, dynamic> data,
  ) async {
    var requests_params = _vk.defaultOptions;
    requests_params.addAll(data);

    if (requests_params.get('random_id') == null) {
      requests_params.add('random_id', Random().nextInt(4294967296));
    }

    for (var item in requests_params.data.entries) {
      if (item.value is List) {
        requests_params.data[item.key] = item.value.join(',');
      } else {
        requests_params.data[item.key] = item.value.toString();
      }
    }
    var url = Uri.parse(_baseUrl + '/$method');
    var response = await http.post(
      url,
      body: requests_params.data,
    );

    if (response.statusCode != 200) {
      throw APIException(-1, response.statusCode.toString());
    }

    var response_params = Params.fromJson(response.body);
    if (response_params.get('error') != null) {
      Map error = response_params.get('error');

      throw APIException(
        error['error_code'],
        error['error_msg'],
      );
    }

    return response_params;
  }
}

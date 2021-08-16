import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:vklib/src/core/base/types.dart';
import 'package:vklib/src/core/exception.dart';
import 'package:vklib/src/core/methods.dart';

import 'objects/other/language.dart';

enum TokenOwner {
  USER,
  GROUP,
  UNKNOWN,
}

class API {
  final String _baseUrl = 'https://api.vk.com/method';
  late TokenOwner _token_owner;
  late String _access_token;
  late String _lang;
  late String _v;
  late bool _test_mode;
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
  late Appwidgets appwidgets;
  late Store store;
  late Donut donut;
  late Podcasts podcasts;

  API(String access_token,
      {String v = '5.130',
      String lang = LanguageType.RU,
      bool test_mode = false,
      token_owner = TokenOwner.UNKNOWN}) {
    _access_token = access_token;
    _token_owner = token_owner;
    _v = v;
    _lang = lang;
    _test_mode = test_mode;
    _token_owner = _token_owner;

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
    print(user);
    if (user['response'].length != 0) {
      _token_owner = TokenOwner.USER;
    } else {
      _token_owner = TokenOwner.GROUP;
    }
    return _token_owner;
  }

  Json get defaultOptions {
    return {
      'access_token': _access_token,
      'v': _v,
      'lang': _lang,
      'test_mode': _test_mode,
    };
  }

  Future<Json> request(
    String method,
    Map<String, dynamic> data,
  ) async {
    var requests_params = defaultOptions;
    requests_params.addAll(data);

    if (requests_params['random_id'] == null) {
      requests_params['random_id'] = Random().nextInt(4294967296);
    }

    for (var item in requests_params.entries) {
      if (item.value is List) {
        requests_params[item.key] = item.value.join(',');
      } else {
        requests_params[item.key] = item.value.toString();
      }
    }
    var url = Uri.parse(_baseUrl + '/$method');
    var response = await http.post(
      url,
      body: requests_params,
    );

    if (response.statusCode != 200) {
      throw APIException(-1, response.statusCode.toString());
    }

    var response_params = json.decode(response.body);
    if (response_params['error'] != null) {
      Map error = response_params['error'];

      throw APIException(
        error['error_code'],
        error['error_msg'],
      );
    }

    return response_params;
  }
}

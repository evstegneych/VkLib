import 'package:dotenv/dotenv.dart';
import 'package:vklib/src/botapi/bot_router.dart';
import 'package:vklib/src/core/api.dart';
import 'package:vklib/src/core/longpoll/group_longpoll.dart';
import 'package:vklib/utils.dart';

/// Main class
class VkLib {
  /// Creates a instance of VkLib
  VkLib({
    required String token,
    String v = '5.130',
    String lang = LanguageType.RU,
    bool test_mode = false,
  }) {
    String _access_token;
    if (token.startsWith('%')) {
      load();
      _access_token = env[token.substring(1)] ?? 'unknown';
    } else {
      _access_token = token;
    }
    api = API(_access_token, v: v, lang: lang, test_mode: test_mode);
    botRoutes = [BotRouter(api: api)];
  }

  /// Instance of API class
  late API api;

  /// List Routes
  late List<BotRouter> botRoutes;

  /// Get main router
  BotRouter get router => botRoutes[0];

  void run() async {
    var lp = GroupLongPoll(api);
    lp.messageNew((event) async {
      botRoutes.forEach((element) {
        element.handleEvent(event);
      });
    });
    print('start');
    lp.start();
  }
}

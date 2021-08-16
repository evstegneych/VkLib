// import 'package:vklib/src/core/objects/other/base_responses.dart';
//
// class MessageNewObject extends BaseApiResponse {
//   static const String type = 'message_new';
//
//   MessageNewObject(Map<String, dynamic> _map) : super(_map) {
//     build();
//   }
//
//   @override
//   Map<String, dynamic> get body => super.body;
//
//   void build() {
//     object = _MessageNewObject(body['object']);
//   }
//
//   late _MessageNewObject object;
// }
//
// class _MessageNewObject extends BaseApiResponse {
//   _MessageNewObject(Map<String, dynamic> _map) : super(_map) {
//
//     message = MessagesMessage(body['message']);
//     clientInfo = _ClientInfo(body['client_info']);
//   }
//
//   @override
//   Map<String, dynamic> get body => super.body;
//
//   late MessagesMessage message;
//
//   late _ClientInfo clientInfo;
// }
//
// class _ClientInfo extends BaseApiResponse {
//   _ClientInfo(Map<String, dynamic> _map) : super(_map) {
//
//     fromId = body['keyboard'];
//
//     InlineKeyboard = body['inline_keyboard'];
//
//     Carousel = body['carousel'];
//
//     langId = body['lang_id'];
//   }
//
//   @override
//   Map<String, dynamic> get body => super.body;
//
//
//   List<String> get buttonActions => body['button_actions'];
//
//   bool? fromId;
//
//   bool? InlineKeyboard;
//
//   bool? Carousel;
//
//   int? langId;
// }

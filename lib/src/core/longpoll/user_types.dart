import 'package:vklib/src/core/longpoll/types.dart';

class UserLongPollEventsEnum {
  static BaseEventType get messageFlagsReplace => BaseEventType(1);

  static BaseEventType get messageFlagsSet => BaseEventType(2);

  static BaseEventType get messageFlagsReset => BaseEventType(3);

  static BaseEventType get messageNew => BaseEventType(4);

  static BaseEventType get messageEdit => BaseEventType(5);

  static BaseEventType get readAllIncomingMessages => BaseEventType(6);

  static BaseEventType get readAllOutgoingMessages => BaseEventType(7);

  static BaseEventType get userOnline => BaseEventType(8);

  static BaseEventType get userOffline => BaseEventType(9);

  static BaseEventType get peerFlagsReset => BaseEventType(10);

  static BaseEventType get peerFlagsReplace => BaseEventType(11);

  static BaseEventType get peerFlagsSet => BaseEventType(12);

  static BaseEventType get peerDeleteAll => BaseEventType(13);

  static BaseEventType get peerRestoreAll => BaseEventType(14);

  static BaseEventType get chatEdit => BaseEventType(51);

  static BaseEventType get chatUpdate => BaseEventType(52);

  static BaseEventType get userTyping => BaseEventType(61);

  static BaseEventType get userTypingInChat => BaseEventType(62);

  static BaseEventType get userRecordingVoice => BaseEventType(64);

  static BaseEventType get userCall => BaseEventType(70);

  static BaseEventType get messagesCounterUpdate => BaseEventType(80);

  static BaseEventType get notificationSettingsUpdate => BaseEventType(114);

  static BaseEventType newEvent(int eventId) => BaseEventType(eventId);
}
// 22
// #: Замена флагов сообщения (FLAGS:=$flags)
// MESSAGE_FLAGS_REPLACE = 1
//
// #: Установка флагов сообщения (FLAGS|=$mask)
// MESSAGE_FLAGS_SET = 2
//
// #: Сброс флагов сообщения (FLAGS&=~$mask)
// MESSAGE_FLAGS_RESET = 3
//
// #: Добавление нового сообщения.
// MESSAGE_NEW = 4
//
// #: Редактирование сообщения.
// MESSAGE_EDIT = 5
//
// #: Прочтение всех входящих сообщений в $peer_id,
// #: пришедших до сообщения с $local_id.
// READ_ALL_INCOMING_MESSAGES = 6
//
// #: Прочтение всех исходящих сообщений в $peer_id,
// #: пришедших до сообщения с $local_id.
// READ_ALL_OUTGOING_MESSAGES = 7
//
// #: Друг $user_id стал онлайн. $extra не равен 0, если в mode был передан флаг 64.
// #: В младшем байте числа extra лежит идентификатор платформы
// #: (см. :class:`VkPlatform`).
// #: $timestamp — время последнего действия пользователя $user_id на сайте.
// USER_ONLINE = 8
//
// #: Друг $user_id стал оффлайн ($flags равен 0, если пользователь покинул сайт и 1,
// #: если оффлайн по таймауту). $timestamp — время последнего действия пользователя
// #: $user_id на сайте.
// USER_OFFLINE = 9
//
// #: Сброс флагов диалога $peer_id.
// #: Соответствует операции (PEER_FLAGS &= ~$flags).
// #: Только для диалогов сообществ.
// PEER_FLAGS_RESET = 10
//
// #: Замена флагов диалога $peer_id.
// #: Соответствует операции (PEER_FLAGS:= $flags).
// #: Только для диалогов сообществ.
// PEER_FLAGS_REPLACE = 11
//
// #: Установка флагов диалога $peer_id.
// #: Соответствует операции (PEER_FLAGS|= $flags).
// #: Только для диалогов сообществ.
// PEER_FLAGS_SET = 12
//
// #: Удаление всех сообщений в диалоге $peer_id с идентификаторами вплоть до $local_id.
// PEER_DELETE_ALL = 13
//
// #: Восстановление недавно удаленных сообщений в диалоге $peer_id с
// #: идентификаторами вплоть до $local_id.
// PEER_RESTORE_ALL = 14
//
// #: Один из параметров (состав, тема) беседы $chat_id были изменены.
// #: $self — 1 или 0 (вызваны ли изменения самим пользователем).
// CHAT_EDIT = 51
//
// #: Изменение информации чата $peer_id с типом $type_id
// #: $info — дополнительная информация об изменениях
// CHAT_UPDATE = 52
//
// #: Пользователь $user_id набирает текст в диалоге.
// #: Событие приходит раз в ~5 секунд при наборе текста. $flags = 1.
// USER_TYPING = 61
//
// #: Пользователь $user_id набирает текст в беседе $chat_id.
// USER_TYPING_IN_CHAT = 62
//
// #: Пользователь $user_id записывает голосовое сообщение в диалоге/беседе $peer_id
// USER_RECORDING_VOICE = 64
//
// #: Пользователь $user_id совершил звонок с идентификатором $call_id.
// USER_CALL = 70
//
// #: Счетчик в левом меню стал равен $count.
// MESSAGES_COUNTER_UPDATE = 80
//
// #: Изменились настройки оповещений.
// #: $peer_id — идентификатор чата/собеседника,
// #: $sound — 1/0, включены/выключены звуковые оповещения,
// #: $disabled_until — выключение оповещений на необходимый срок.
// NOTIFICATION_SETTINGS_UPDATE = 114

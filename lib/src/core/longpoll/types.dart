class LongPollEventHandler<T> {
  late T callback;
  late BaseEventType type;

  LongPollEventHandler(this.type, this.callback);
}

class BaseEventType<T> {
  final T name;

  BaseEventType(this.name);

  T getName() {
    return name;
  }

  @override
  String toString() {
    return getName().toString();
  }

  @override
  bool operator ==(Object other) {
    return toString() == other.toString();
  }
}

class GroupLongPollEventsEnum {
  static BaseEventType get MessageNew => BaseEventType('message_new');

  static BaseEventType get MessageEvent => BaseEventType('message_event');

  static BaseEventType get MessageEdit => BaseEventType('message_edit');

  static BaseEventType get MessageReply => BaseEventType('message_reply');

  static BaseEventType get MessageAllow => BaseEventType('message_allow');

  static BaseEventType get MessageDeny => BaseEventType('message_deny');
}

class UserLongPollEventsEnum {
  /// Замена флагов сообщения (FLAGS:=$flags)
  static BaseEventType get messageFlagsReplace => BaseEventType(1);

  /// Установка флагов сообщения (FLAGS|=$mask)
  static BaseEventType get messageFlagsSet => BaseEventType(2);

  /// Сброс флагов сообщения (FLAGS&=~$mask)
  static BaseEventType get messageFlagsReset => BaseEventType(3);

  /// Добавление нового сообщения.
  static BaseEventType get messageNew => BaseEventType(4);

  /// Редактирование сообщения.
  static BaseEventType get messageEdit => BaseEventType(5);

  /// Прочтение всех входящих сообщений в $peer_id,
  /// пришедших до сообщения с $local_id.
  static BaseEventType get readAllIncomingMessages => BaseEventType(6);

  /// Прочтение всех исходящих сообщений в $peer_id,
  /// пришедших до сообщения с $local_id.
  static BaseEventType get readAllOutgoingMessages => BaseEventType(7);

  /// Друг $user_id стал онлайн. $extra не равен 0, если в mode был передан флаг 64.
  /// В младшем байте числа extra лежит идентификатор платформы
  /// (см. :class:`VkPlatform`).
  /// $timestamp — время последнего действия пользователя $user_id на сайте.
  static BaseEventType get userOnline => BaseEventType(8);

  /// Друг $user_id стал оффлайн ($flags равен 0, если пользователь покинул сайт и 1,
  /// если оффлайн по таймауту). $timestamp — время последнего действия пользователя
  /// $user_id на сайте.
  static BaseEventType get userOffline => BaseEventType(9);

  /// Сброс флагов диалога $peer_id.
  /// Соответствует операции (PEER_FLAGS &= ~$flags).
  /// Только для диалогов сообществ.
  static BaseEventType get peerFlagsReset => BaseEventType(10);

  /// Замена флагов диалога $peer_id.
  /// Соответствует операции (PEER_FLAGS:= $flags).
  /// Только для диалогов сообществ.
  static BaseEventType get peerFlagsReplace => BaseEventType(11);

  /// Установка флагов диалога $peer_id.
  /// Соответствует операции (PEER_FLAGS|= $flags).
  /// Только для диалогов сообществ.
  static BaseEventType get peerFlagsSet => BaseEventType(12);

  /// Удаление всех сообщений в диалоге $peer_id с идентификаторами вплоть до $local_id.
  static BaseEventType get peerDeleteAll => BaseEventType(13);

  /// Восстановление недавно удаленных сообщений в диалоге $peer_id с
  /// идентификаторами вплоть до $local_id.
  static BaseEventType get peerRestoreAll => BaseEventType(14);

  /// Один из параметров (состав, тема) беседы $chat_id были изменены.
  /// $self — 1 или 0 (вызваны ли изменения самим пользователем).
  static BaseEventType get chatEdit => BaseEventType(51);

  /// Изменение информации чата $peer_id с типом $type_id
  /// $info — дополнительная информация об изменениях
  static BaseEventType get chatUpdate => BaseEventType(52);

  /// Пользователь $user_id набирает текст в диалоге.
  /// Событие приходит раз в ~5 секунд при наборе текста. $flags = 1.
  static BaseEventType get userTyping => BaseEventType(61);

  /// Пользователь $user_id набирает текст в беседе $chat_id.
  static BaseEventType get userTypingInChat => BaseEventType(62);

  /// Пользователь $user_id записывает голосовое сообщение в диалоге/беседе $peer_id
  static BaseEventType get userRecordingVoice => BaseEventType(64);

  /// Пользователь $user_id совершил звонок с идентификатором $call_id.
  static BaseEventType get userCall => BaseEventType(70);

  /// Счетчик в левом меню стал равен $count.
  static BaseEventType get messagesCounterUpdate => BaseEventType(80);

  /// Изменились настройки оповещений.
  /// $peer_id — идентификатор чата/собеседника,
  /// $sound — 1/0, включены/выключены звуковые оповещения,
  /// $disabled_until — выключение оповещений на необходимый срок.
  static BaseEventType get notificationSettingsUpdate => BaseEventType(114);

  static BaseEventType newEvent(int eventId) => BaseEventType(eventId);
}

// Use this when the UserLongPoll is ready
class LongPollEventHandler<T, V> {
  late T callback;
  late V type;

  LongPollEventHandler(this.type, this.callback);
}

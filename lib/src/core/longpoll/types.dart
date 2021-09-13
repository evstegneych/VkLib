// Use this when the UserLongPoll is ready
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
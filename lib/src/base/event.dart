abstract class BaseEvent<T, EventType> {
  late T _content;

  BaseEvent(__content) {
    _content = __content;
  }

  set content(_content) {
    _content = _content;
  }

  T get content => _content;

  T get object;

  EventType get type;
}

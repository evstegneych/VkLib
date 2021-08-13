abstract class BaseEvent<T, EventType> {
  late T _content;

  BaseEvent(T __content) {
    content = __content;
  }

  set content(__content) {
    _content = __content;
  }

  T get content => _content;

  T get object;

  EventType get type;
}

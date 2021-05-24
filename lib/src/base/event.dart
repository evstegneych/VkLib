/// *[String]* or *[int]* type
typedef EventType = dynamic;

abstract class BaseEvent<T> {
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

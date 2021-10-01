/// BaseEvent
abstract class BaseEvent<T, EventType> {
  late T _content;

  /// BaseEvent
  BaseEvent(T __content) {
    content = __content;
  }

  /// set content
  set content(__content) {
    _content = __content;
  }

  /// Get content of event
  T get content => _content;

  /// Get object of event
  T get object;

  /// Get event type
  EventType get type;
}

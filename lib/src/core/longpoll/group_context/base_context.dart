class BaseContext {
  late final String type;

  BaseContext(this.type);

  @override
  bool operator ==(Object other) {
    return type == other.toString();
  }
}

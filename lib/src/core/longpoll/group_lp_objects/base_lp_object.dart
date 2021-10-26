class BaseLpObject {
  late final String type;

  BaseLpObject(this.type);

  @override
  bool operator ==(Object other) {
    return type == other.toString();
  }
}

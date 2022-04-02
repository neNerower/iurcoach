class Username {
  final String value;

  const Username({this.value = ""});

  bool validate() {
    // TODO: Add validations
    return value.isNotEmpty;
  }
}
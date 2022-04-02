class Password {
  final String value;

  const Password({this.value = ""});

  bool validate() {
    // TODO: Add validations
    return value.isNotEmpty;
  }
}
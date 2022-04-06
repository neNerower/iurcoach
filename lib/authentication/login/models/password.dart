import 'form_model.dart';

class Password extends FormModel {
  const Password() : super.empty();
  const Password.value(String value) : super.value(value);

  @override
  String validator() {
    // TODO: Add validations
    return super.validator();
  }
}
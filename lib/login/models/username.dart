import 'form_model.dart';

class Username extends FormModel {
  const Username() : super.empty();
  const Username.value(String value) : super.value(value);

  @override
  String validator() {
    // TODO: Add validations
    return super.validator();
  }
}

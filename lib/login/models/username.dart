import 'form_model.dart';

class Username extends FormModel {
  const Username() : super.empty();
  const Username.value(String value) : super.value(value);

  @override
  String validator() {
    if (!RegExp(r'^[0-9]{6}$').hasMatch(value)) {
      return "Isu number should be 6 numbers";
    }
    return super.validator();
  }
}

import 'package:meta/meta.dart';

abstract class FormModel {
  final String value;
  final bool isPure;

  const FormModel._({this.value = "", this.isPure = true});

  const FormModel.empty() : this._();

  const FormModel.value(String value) : this._(value: value, isPure: false);

  String validator() {
    // TODO: Add validations
    if (value.isEmpty) {
      return "Value is empty";
    }
    return "";
  }

  @nonVirtual
  String validate() {
    final flaw = validator();

    if (flaw != "" && !isPure) {
      return flaw;
    }
    return "";
  }
}
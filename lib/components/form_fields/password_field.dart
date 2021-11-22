import 'package:flutter/material.dart';

import 'base_form_field.dart';

class PasswordField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final void Function(String?) onSaved;

  const PasswordField({
    Key? key,
    this.labelText = "Пароль",
    this.hintText = "",
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFormField(
      labelText: labelText,
      hintText: hintText,
      isHidden: true,
      customValidator: (value) {
        if (value.length > 0 && value.length < 6) return "Должен содержать не менее 6 символов";
        if (!RegExp("(?=.*[A-ZА-Я])").hasMatch(value)) return "Должен содержать заглавную букву";
        if (!RegExp("(?=.*[a-zа-я])").hasMatch(value)) return "Должен содержать строчную букву";
        if (!RegExp("(?=.*?[0-9])").hasMatch(value)) return "Должен содержать цифру";
      },
      onSaved: onSaved,
    );
  }
}
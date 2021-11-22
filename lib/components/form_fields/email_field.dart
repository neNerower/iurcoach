import 'package:flutter/material.dart';

import 'base_form_field.dart';

class EmailField extends StatelessWidget {
  final void Function(String?) onSaved;

  const EmailField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFormField(
      labelText: "Email",
      hintText: "my_email@example.com",
      textCapitalization: TextCapitalization.none,
      customValidator: (value) {
        // Check email format
        if (!RegExp(r"^[\w.!#$%&'*+-/=?^_`{|}~]+@[\w]+\.[a-zA-Z]+$|^$").hasMatch(value))
          return "Неверный формат ввода";
      },
      onSaved: onSaved,
    );
  }
}

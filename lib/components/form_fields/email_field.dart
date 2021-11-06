import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final void Function(String?) onSaved;

  const EmailField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: "Email"),
      textCapitalization: TextCapitalization.none,
      keyboardType: TextInputType.text,
      validator: (value) {
        // Check is empty
        if (value!.isEmpty)
          return "Это обязательное поле";
        // Check id format
        if (!RegExp(r"[\w!#$%&'*+/=?^_`{|}~-]+@[\w]+.[\w]").hasMatch(value))
          return "Неверный формат ввода";
      },
      onSaved: onSaved,
    );
  }
}
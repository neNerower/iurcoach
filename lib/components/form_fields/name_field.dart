import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NameField extends StatelessWidget {
  final String labelText;
  final void Function(String?) onSaved;

  const NameField({
    Key? key,
    required this.labelText,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText),
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      validator: (value) {
        // Check is empty
        return value!.isEmpty ? "Это обязательное поле" : null;
      },
      onSaved: onSaved,
    );
  }
}

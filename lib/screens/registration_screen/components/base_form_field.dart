import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseFormField extends StatelessWidget {
  final String labelText;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? customValidator;
  final int? maxLength;
  final void Function(String?) onSaved;

  const BaseFormField({
    Key? key,
    required this.labelText,
    required this.onSaved,
    this.textInputType = TextInputType.name,
    this.inputFormatters,
    this.customValidator,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText),
      textCapitalization: TextCapitalization.words,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      maxLength: maxLength,
      validator: (value) {
        // If is empty
        if (value == null || value == "") {
          return 'Это обязательное поле';
        }
        // Try call custom validator
        return customValidator!(value) ?? null;
      },
      onSaved: onSaved,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_form_field.dart';

class PhoneField extends StatelessWidget {
  final void Function(String?) onSaved;

  const PhoneField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFormField(
      labelText: "Телефон",
      hintText: "+7 (xxx) xxx-xx-xx",
      mask: "+7 (000) 000-00-00",
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      customValidator: (value) {
        // Check phone format
        if (!RegExp(r"^(\+7) \(\d{3}\) \d{3}\-\d{2}\-\d{2}$|^$").hasMatch(value))
          return "Неверный формат ввода";
      },
      onSaved: onSaved,
    );
  }
}

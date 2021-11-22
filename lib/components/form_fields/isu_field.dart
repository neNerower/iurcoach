import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'base_form_field.dart';

class IsuField extends StatelessWidget {
  final void Function(String?) onSaved;

  const IsuField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFormField(
      labelText: "Номер ИСУ",
      hintText: "xxx-xxx",
      // keyboardType: TextInputType.number,
      mask: "000-000",
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      customValidator: (value) {
        if (!RegExp(r"^\d{3}-\d{3}$").hasMatch(value))
          return "Должен содержать 6 цифр";
      },
      onSaved: onSaved,
    );
  }
}

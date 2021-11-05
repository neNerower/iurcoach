import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneField extends StatelessWidget {
  final void Function(String?) onSaved;

  const PhoneField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Телефон",
        prefixText: "+7",
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      validator: (value) {
        return value!.length != 12 ? "Проверьте формат номера" : null;
      },
      onSaved: onSaved,
    );
  }
}

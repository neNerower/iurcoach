import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class IsuField extends StatelessWidget {
  final void Function(String?) onSaved;

  const IsuField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: "Номер ИСУ"),
      keyboardType: TextInputType.number,
      controller: MaskedTextController(
        mask: "000-000",
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      validator: (value) {
        return value!.length != 6 ? "Должен содержать 6 цифр" : null;
      },
      onSaved: onSaved,
    );
  }
}

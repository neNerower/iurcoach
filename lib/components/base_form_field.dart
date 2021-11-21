import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class BaseFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  // Field data should be hidden
  final bool isHidden;
  // Is form field required
  final bool isRequired;
  // Input formatting
  final String? Function(String)? customValidator;
  final String? mask;
  final List<TextInputFormatter>? inputFormatters;
  // Field data computing function
  final void Function(String?) onSaved;

  const BaseFormField({
    Key? key,
    required this.labelText,
    this.hintText = "",
    this.keyboardType,
    this.textCapitalization = TextCapitalization.sentences,
    this.isHidden = false,
    this.isRequired = false,
    this.customValidator,
    this.mask,
    this.inputFormatters,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        // TODO: add iconbutton to show hidden password
      ),
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      controller: MaskedTextController(
        mask: mask,
      ),
      inputFormatters: inputFormatters,
      validator: (value) {
        // Check is empty
        if (value!.isEmpty) {
          return isRequired ? "Это обязательное поле" : null;
        }
        // Custom checks
        return customValidator!(value);
      },
      obscureText: isHidden,
      obscuringCharacter: '*',
      onSaved: onSaved,
    );
  }
}

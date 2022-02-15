import 'package:flutter/material.dart';

import 'base_form_field.dart';

class VkIdField extends StatelessWidget {
  final void Function(String?) onSaved;

  const VkIdField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseFormField(
      labelText: "ID VK",
      hintText: "vk.com/your_id",
      textCapitalization: TextCapitalization.none,
      customValidator: (value) {
        // Check id format
        if (!RegExp(r"^vk.com/[\w]+$").hasMatch(value)) return "Должен начинаться с vk.com/";
      },
      onSaved: onSaved,
    );
  }
}

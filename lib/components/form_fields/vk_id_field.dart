import 'package:flutter/material.dart';

class VkIdField extends StatelessWidget {
  final void Function(String?) onSaved;

  const VkIdField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: "ID VK"),
      textCapitalization: TextCapitalization.none,
      keyboardType: TextInputType.text,
      validator: (value) {
        // Check is empty
        if (value!.isEmpty)
          return "Это обязательное поле";
        // Check id format
        if (!value.startsWith("vk.com/"))
          return "Должен начинаться с vk.com/";
      },
      onSaved: onSaved,
    );
  }
}

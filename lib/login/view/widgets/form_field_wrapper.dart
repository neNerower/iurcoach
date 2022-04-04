import 'package:flutter/material.dart';

class FormFieldWrapper extends StatelessWidget {
  final TextFormField child;

  const FormFieldWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 3),
      margin: const EdgeInsets.only(bottom: 10),
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: child,
    );
  }
}

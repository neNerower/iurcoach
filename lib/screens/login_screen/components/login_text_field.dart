import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final bool isHidden;
  final String hintText;
  // final void Function(String?) onSaved;

  const LoginTextField({
    Key? key,
    this.isHidden = false,
    required this.hintText,
    // required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: TextFormField(
        obscureText: isHidden,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          // TODO: add iconbutton to show hidden password
        ),
        obscuringCharacter: '*',
        // onSaved: onSaved,
      ),
    );
  }
}

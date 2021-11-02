import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final bool isHidden;
  final String hintText;

  const LoginTextField({
    Key? key,
    this.isHidden = false,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: TextField(
        obscureText: isHidden,
        decoration: InputDecoration(
          hintText: hintText,
          border: UnderlineInputBorder(),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 4),
          // TODO: add iconbutton to show hidden password
        ),
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          height: 1,
          color: Color(0xFF12519E),
        ),
        obscuringCharacter: '*',
      ),
    );
  }
}

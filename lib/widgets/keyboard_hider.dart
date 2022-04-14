import 'package:flutter/material.dart';

class KeyboardHider extends StatelessWidget {
  final Widget child;
  const KeyboardHider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
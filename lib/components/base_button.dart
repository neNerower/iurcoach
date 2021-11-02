import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final double height;
  final double? width;
  final Widget? icon;
  final Color? color;
  final String label;
  final void Function() onPressed;

  const BaseButton({
    Key? key,
    this.icon,
    this.color,
    this.width,
    this.height = 45,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 20),
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? Container(),
            icon != null ? SizedBox(width: 12) : Container(),
            Text(label),
          ],
        ),
      ),
    );
  }
}

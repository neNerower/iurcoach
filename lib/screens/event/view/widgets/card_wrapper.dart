import 'package:flutter/material.dart';

class CardWrapper extends StatelessWidget {
  final Widget child;
  const CardWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.lightBlue[50],
      child: Container(
        padding: EdgeInsets.all(5),
        width: double.infinity,
        child: child,
      ),
    );
  }
}

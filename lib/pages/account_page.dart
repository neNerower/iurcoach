import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key? key}) : super(key: key);

  String get title => "Account";

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget.title),
      ),
    );
  }
}
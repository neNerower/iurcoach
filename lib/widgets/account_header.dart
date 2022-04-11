import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/models/models.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({Key? key, required this.model}) : super(key: key);

  final UserModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(model.photoURL ?? ""),
          radius: 35,
        ),
        SizedBox(width: 15),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${model.firstName} ${model.lastName}",
              style: TextStyle(fontSize: 24, color: Colors.blue[900], fontWeight: FontWeight.bold),
            ),
            Text("${model.group}")
          ],
        ),
      ],
    );
  }
}

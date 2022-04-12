import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/models/models.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(user.photoURL),
          radius: 35,
        ),
        SizedBox(width: 15),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${user.firstName} ${user.lastName}",
              style: TextStyle(fontSize: 24, color: Colors.blue[900], fontWeight: FontWeight.bold),
            ),
            Text("${user.team}")
          ],
        ),
      ],
    );
  }
}

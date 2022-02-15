import 'package:flutter/material.dart';

class ReadonlyTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabBar child;

  const ReadonlyTabBar({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(child: child);
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}

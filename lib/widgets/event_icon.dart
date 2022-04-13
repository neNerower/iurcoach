import 'package:flutter/material.dart';

class EventIcon extends StatelessWidget {
  final String type;
  final double size;
  const EventIcon({Key? key, required this.type, this.size = 40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'cardio':
        return Icon(
          Icons.favorite,
          color: Colors.red,
          size: size,
        );
      case 'power':
        return Icon(
          Icons.fitness_center,
          color: Colors.grey,
          size: size,
        );
      case 'speed':
        return Icon(
          Icons.speed,
          color: Colors.green,
          size: size,
        );
      case 'competition':
        return Icon(
          Icons.flag,
          color: Colors.yellow,
          size: size,
        );
      default:
        return Icon(
          Icons.cake,
          color: Colors.purple,
          size: size,
        );
    }
  }
}

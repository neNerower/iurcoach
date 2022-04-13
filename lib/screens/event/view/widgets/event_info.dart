import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/conf/globals.dart';
import 'package:iurc_mobile_app/models/models.dart';

class EventInfo extends StatelessWidget {
  final Event event;
  const EventInfo({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${event.dateTime.day} ${Strings.monthRNames[event.dateTime.month - 1]} ${event.dateTime.year}",
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.blue[900]),
        ),
        Row(
          children: [
            Icon(Icons.location_on),
            Text(
              event.place,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.access_time),
            Text(
              "${event.dateTime.hour.toString().padLeft(2, '0')}:${event.dateTime.minute.toString().padLeft(2, '0')}",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        )
      ],
    );
  }
}

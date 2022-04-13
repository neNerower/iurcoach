import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/conf/globals.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/screens/event_screen.dart';

import 'event_icon.dart';

class EventPreview extends StatelessWidget {
  final Event event;
  final Result? result;

  const EventPreview({Key? key, required this.event, this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return EventScreen(event: event, result: result);
        }),
      ),
      child: Card(
        color: Colors.lightBlue[100],
        elevation: 10,
        child: ListTile(
          leading: EventIcon(type: event.eventType),
          title: Text(
            "${event.dateTime.day} ${Strings.monthRNames[event.dateTime.month - 1]} ${event.dateTime.year}",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.blue[900],
                ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${event.dateTime.hour.toString().padLeft(2, '0')}:${event.dateTime.minute.toString().padLeft(2, '0')}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text("${event.place}")
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${event.participants.length} идут",
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

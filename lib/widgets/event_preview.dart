import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/models/models.dart';

class EventPreview extends StatelessWidget {
  final Event event;

  const EventPreview({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Card(
            color: Colors.lightBlue[100],
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "${event.dateTime.day}.${event.dateTime.month}",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${event.place}, ${event.dateTime.hour}:${event.dateTime.minute} ...",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      // Icon(Icons.add),
                      Text("Иду"),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {},
                  child: Column(
                    children: const [
                      // Icon(Icons.remove),
                      Text("Пас"),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "${event.participants.length} идут",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        )
      ],
    );
  }
}

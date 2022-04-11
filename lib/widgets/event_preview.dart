import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/models/models.dart';

class EventPreview extends StatelessWidget {
  final Event event;

  const EventPreview({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue[100],
      elevation: 10,
      child: ListTile(
        leading: _EventIcon(type: event.eventType),
        title: Text(
          "${event.dateTime.day.toString().padLeft(2, '0')}.${event.dateTime.month.toString().padLeft(2, '0')} ${event.eventType}",
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
    );

    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: [
    //     Expanded(
    //       child: Card(
    //         color: Colors.lightBlue[100],
    //         child: Padding(
    //           padding: EdgeInsets.all(10),
    //           child: Column(
    //             children: [
    //               Text(
    //                 "${event.dateTime.day}.${event.dateTime.month}",
    //                 style: TextStyle(
    //                     fontSize: 20,
    //                     color: Colors.blue[900],
    //                     fontWeight: FontWeight.w600),
    //               ),
    //               Text(
    //                 "${event.place}, ${event.dateTime.hour}:${event.dateTime.minute} ...",
    //                 style: const TextStyle(fontSize: 16),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //     SizedBox(width: 10),
    //     Column(
    //       children: [
    //         Row(
    //           children: [
    //             ElevatedButton(
    //               onPressed: () {},
    //               child: Column(
    //                 children: const [
    //                   // Icon(Icons.add),
    //                   Text("Иду"),
    //                 ],
    //               ),
    //             ),
    //             SizedBox(width: 5),
    //             ElevatedButton(
    //               onPressed: () {},
    //               child: Column(
    //                 children: const [
    //                   // Icon(Icons.remove),
    //                   Text("Пас"),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //         Text(
    //           "${event.participants.length} идут",
    //           style: TextStyle(color: Colors.blue),
    //         ),
    //       ],
    //     )
    //   ],
    // );
  }
}

class _EventIcon extends StatelessWidget {
  final String type;
  const _EventIcon({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'cardio':
        return Icon(
          Icons.favorite,
          color: Colors.red,
          size: 40,
        );
      case 'power':
        return Icon(
          Icons.fitness_center,
          color: Colors.grey,
          size: 40,
        );
      case 'speed':
        return Icon(
          Icons.speed,
          color: Colors.green,
          size: 40,
        );
      case 'competition':
        return Icon(
          Icons.flag,
          color: Colors.yellow,
          size: 40,
        );
      default:
        return Icon(
          Icons.cake,
          color: Colors.purple,
          size: 40,
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/conf/globals.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

class EventScreen extends StatelessWidget {
  final Event event;
  final Result? result;
  const EventScreen({Key? key, required this.event, this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(
          //   "${event.dateTime.day} ${Strings.monthRNames[event.dateTime.month - 1]} ${event.dateTime.year}",
          // ),
          ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EventIcon(type: event.eventType),
                Text(
                  Strings.eventTypes[event.eventType] ?? "Мероприятие",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            SizedBox(height: 10),
            Card(
              elevation: 5,
              color: Colors.lightBlue[100],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
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
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.access_time),
                                  Text(
                                    "${event.dateTime.hour.toString().padLeft(2, '0')}:${event.dateTime.minute.toString().padLeft(2, '0')}",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        _VoiteButtons(amount: event.participants.length),
                      ],
                    ),
                    Divider(height: 40, indent: 20, endIndent: 20),
                    CardWrapper(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "План",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(color: Colors.blue[900]),
                          ),
                          Divider(height: 20, indent: 10, endIndent: 10),
                          Text(
                            event.description,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                    (result != null)
                        ? CardWrapper(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Результат",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(color: Colors.blue[900]),
                                ),
                                Divider(height: 20, indent: 10, endIndent: 10),
                                (result!.photos.isNotEmpty)
                                    ? PostImage(imageUrl: result!.photos[0])
                                    : Container(),
                                Text(
                                  result!.comment,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class _VoiteButtons extends StatelessWidget {
  final int amount;
  const _VoiteButtons({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
          "$amount идут",
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}

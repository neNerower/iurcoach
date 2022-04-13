import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/conf/globals.dart';
import 'package:iurc_mobile_app/screens/event/bloc/event_bloc.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

import 'widgets/widgets.dart';

// TODO: It's terrible and should be rebuild

class EventScreenView extends StatelessWidget {
  const EventScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Подробнее"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: BlocBuilder<EventBloc, EventState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: CircularProgressIndicator()),
              failure: (message) =>
                  Center(child: Text(message ?? "Loading event failure")),
              data: (event, result, status) {
                return Column(
                  children: [
                    _Title(eventType: event.eventType),
                    SizedBox(height: 10),
                    Card(
                      elevation: 5,
                      color: Colors.lightBlue[100],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(child: EventInfo(event: event)),
                                _VoiteButtons(
                                  amount: event.participants.length,
                                  status: status,
                                ),
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
                                  Divider(
                                      height: 20, indent: 10, endIndent: 10),
                                  Text(
                                    event.description,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                            (result != null)
                                ? ResultCard(result: result)
                                : (event.dateTime.isBefore(DateTime.now()))
                                    ? Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 20),
                                          child: ElevatedButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.save_as),
                                            label: Text("Записать результат"),
                                          ),
                                        ),
                                      )
                                    : Container(),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String eventType;
  const _Title({Key? key, required this.eventType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EventIcon(type: eventType),
        Text(
          Strings.eventTypes[eventType] ?? "Мероприятие",
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}

class _VoiteButtons extends StatelessWidget {
  final int amount;
  final GoingStatus status;
  const _VoiteButtons(
      {Key? key, required this.amount, this.status = GoingStatus.unknown})
      : super(key: key);

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

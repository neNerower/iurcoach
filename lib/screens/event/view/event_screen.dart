import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/models/models.dart';

import '../event.dart';
import 'event_screen_view.dart';

class EventScreen extends StatelessWidget {
  final Event event;
  const EventScreen({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventBloc()..add(EventUpdated(event)),
      child: EventScreenView(),
    );
  }
}
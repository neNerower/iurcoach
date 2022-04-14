import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/result_edit_cubit.dart';
import 'result_edit_view.dart';

class ResultEditScreen extends StatelessWidget {
  final int eventId;
  const ResultEditScreen({Key? key, required this.eventId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResultEditCubit(eventId),
      child: ResultEditView(),
    );
  }
}
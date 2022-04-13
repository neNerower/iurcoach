import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/pages/pages.dart';

import 'results_view.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResultantBloc>(
      create: (context) => ResultantBloc()..add(ResultantEvent.fetched()),
      child: ResultsView(),
    );
  }
}

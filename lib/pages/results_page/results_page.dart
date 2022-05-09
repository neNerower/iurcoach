import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/bloc/bloc.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultantBloc, ResultantState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          success: (resultantEvents) {
            if (resultantEvents.isEmpty) {
              return const Center(child: Text('No results'));
            }

            return ListView.builder(
              itemCount: resultantEvents.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: EventPreview(event: resultantEvents[index]),
                );
              },
            );
          },
          failure: (message) =>
              Center(child: Text(message ?? 'Failed to fetch results')),
        );
      },
    );
  }
}

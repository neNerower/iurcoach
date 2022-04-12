import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

import '../results.dart';

// class ResultsView extends StatefulWidget {
//   ResultsView({Key? key}) : super(key: key);

//   @override
//   State<ResultsView> createState() => _ResultsViewState();
// }

class ResultsView extends StatelessWidget {
  // final _scrollController = ScrollController();

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController.addListener(_onScroll);
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultsBloc, ResultsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          success: (resultantEvents) {
            if (resultantEvents.isEmpty) {
              return const Center(child: Text('No results'));
            }

            final events = resultantEvents.keys.toList();

            return ListView.builder(
              itemCount: events.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: EventPreview(event: events[index]),
                );
              },
            );
          },
          failure: (message) =>
              Center(child: Text(message ?? 'Failed to fetch posts')),
        );
      },
    );
  }

  // @override
  // void dispose() {
  //   _scrollController
  //     ..removeListener(_onScroll)
  //     ..dispose();
  //   super.dispose();
  // }

  // void _onScroll() {
  //   if (_isBottom) context.read<ResultsBloc>().add(ResultsFetched());
  // }

  // bool get _isBottom {
  //   if (!_scrollController.hasClients) return false;
  //   final maxScroll = _scrollController.position.maxScrollExtent;
  //   final currentScroll = _scrollController.offset;
  //   return currentScroll >= (maxScroll * 0.9);
  // }
}

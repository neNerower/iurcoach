import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/pages/pages.dart';

import '../home.dart';
import 'home_screen_view.dart';

class HomeScreen extends StatelessWidget {
  final CalendarBloc calendarBloc = CalendarBloc();
  final NewsBloc newsBloc = NewsBloc();
  final AccountCubit accountCubit = AccountCubit();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(
            calendarBloc: calendarBloc,
            newsBloc: newsBloc,
            accountCubit: accountCubit,
          ),
        ),
        BlocProvider.value(value: calendarBloc),
        BlocProvider.value(value: newsBloc),
        BlocProvider.value(value: accountCubit),
        // BlocProvider<ResultsBloc>(create: (context) => ResultsBloc()),
      ],
      child: HomeScreenView(),
    );
  }
}

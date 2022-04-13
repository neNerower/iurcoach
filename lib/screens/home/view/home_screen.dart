import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/pages/account/cubit/account_cubit.dart';
import 'package:iurc_mobile_app/pages/calendar/calendar.dart';
import 'package:iurc_mobile_app/pages/news/news.dart';
import 'package:iurc_mobile_app/pages/results/results.dart';

import '../home.dart';
import 'home_screen_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(create: (context) => NavigationBloc()),
        BlocProvider<EventBloc>(create: (context) => EventBloc()),
        BlocProvider<NewsBloc>(create: (context) => NewsBloc()),
        // BlocProvider<ResultsBloc>(create: (context) => ResultsBloc()),
        BlocProvider<AccountCubit>(create: (context) => AccountCubit()),
      ],
      child: HomeScreenView(),
    );
  }
}

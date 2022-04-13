import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/conf/globals.dart';
import 'package:iurc_mobile_app/pages/pages.dart';
import 'package:iurc_mobile_app/screens/screens.dart';
import 'package:iurc_mobile_app/widgets/widgets.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NavigationBloc, NavigationState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) =>
              Text(Strings.pageTitles[state.pageIndex]),
        ),
      ),
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          switch (state.pageIndex) {
            case 0:
              return CalendarPage();
            case 1:
              return ResultsPage();
            case 2:
              return NewsPage();
            case 3:
              return AccountPage();
            default:
              return NewsPage();
          }
        },
      ),
      drawer: BlocBuilder<NavigationBloc, NavigationState>(
        buildWhen: (previous, current) =>
            current == NavigationState.account(),
        builder: (context, state) => BurgerMenu(),
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: state.pageIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.today),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.rowing),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.fiber_new),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: '',
              ),
            ],
            onTap: (selectedPageIndex) => context
                .read<NavigationBloc>()
                .add(NavigationEvent.pageChanged(pageIndex: selectedPageIndex)),
          );
        },
      ),
    );
  }
}

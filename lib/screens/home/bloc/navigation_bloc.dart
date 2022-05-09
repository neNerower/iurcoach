import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/bloc/bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final CalendarBloc _calendarBloc;
  final ResultantBloc _resultantBloc;
  final NewsBloc _newsBloc;
  final AccountCubit _accountCubit;

  NavigationBloc(
      {required CalendarBloc calendarBloc,
      required ResultantBloc resultantBloc,
      required NewsBloc newsBloc,
      required AccountCubit accountCubit})
      : _calendarBloc = calendarBloc,
        _resultantBloc = resultantBloc,
        _newsBloc = newsBloc..add(NewsFetched()),
        _accountCubit = accountCubit,
        super(NavigationState.news()) {
    on<NavigationPageChanged>(_onNavigatedTo);
    on<NavigationPageRefreshed>(_onUpdate);
  }

  void _onNavigatedTo(
      NavigationPageChanged event, Emitter<NavigationState> emit) {
    switch (event.pageIndex) {
      case 0:
        if (_calendarBloc.state.status == CalendarStatus.initial) {
          return this.add(NavigationPageRefreshed(pageIndex: 0));
        }
        return emit(NavigationState.calendar());

      case 1:
        if (_resultantBloc.state == ResultantState.initial()) {
          return this.add(NavigationPageRefreshed(pageIndex: 1));
        }
        return emit(NavigationState.results());

      case 2:
        if (_newsBloc.state.status == NewsStatus.initial) {
          return this.add(NavigationPageRefreshed(pageIndex: 2));
        }
        return emit(NavigationState.news());

      case 3:
        if (_accountCubit.state == AccountState.initial()) {
          return this.add(NavigationPageRefreshed(pageIndex: 3));
        }
        return emit(NavigationState.account());
    }
  }

  void _onUpdate(NavigationPageRefreshed event, Emitter<NavigationState> emit) {
    switch (event.pageIndex) {
      case 0:
        _calendarBloc.add(CalendarEventsFetched(DateTime.now()));
        return emit(NavigationState.calendar());
      case 1:
        _resultantBloc.add(ResultantEvent.fetched());
        return emit(NavigationState.results());
      case 2:
        _newsBloc.add(NewsRefreshed());
        return emit(NavigationState.news());
      case 3:
        _accountCubit.fetchAccountData();
        return emit(NavigationState.account());
    }
  }
}

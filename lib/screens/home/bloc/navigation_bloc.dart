import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/bloc/bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final EventsBloc _eventsBloc;
  final ResultsBloc _resultsBloc;
  final NewsBloc _newsBloc;
  final AccountCubit _accountCubit;

  NavigationBloc(
      {required EventsBloc eventsBloc,
      required ResultsBloc resultsBloc,
      required NewsBloc newsBloc,
      required AccountCubit accountCubit})
      : _eventsBloc = eventsBloc,
        _resultsBloc = resultsBloc,
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
        if (_eventsBloc.state.status == EventsStatus.initial) {
          return this.add(NavigationPageRefreshed(pageIndex: 0));
        }
        return emit(NavigationState.calendar());

      case 1:
        if (_resultsBloc.state == ResultsState.initial()) {
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
        _eventsBloc.add(EventsRefreshed());
        return emit(NavigationState.calendar());
      case 1:
        _resultsBloc.add(ResultsEvent.fetched());
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

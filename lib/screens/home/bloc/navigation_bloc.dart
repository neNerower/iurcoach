import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/pages/account/cubit/account_cubit.dart';
import 'package:iurc_mobile_app/pages/pages.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final EventBloc _eventBloc;
  final NewsBloc _newsBloc;
  final AccountCubit _accountCubit;

  NavigationBloc(
      {required EventBloc eventBloc,
      required NewsBloc newsBloc,
      required AccountCubit accountCubit})
      : _eventBloc = eventBloc,
        _newsBloc = newsBloc,
        _accountCubit = accountCubit,
        super(NavigationState.news()) {
    on<NavigationPageChanged>(_onNavigatedTo);
  }

  void _onNavigatedTo(
      NavigationPageChanged event, Emitter<NavigationState> emit) {
    switch (event.pageIndex) {
      case 0:
        return emit(NavigationState.calendar());
      case 1:
        return emit(NavigationState.results());
      case 2:
        return emit(NavigationState.news());
      case 3:
        return emit(NavigationState.account());
    }
  }
}

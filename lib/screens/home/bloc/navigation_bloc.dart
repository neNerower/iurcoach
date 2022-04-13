import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState.news()) {
    on<NavigationPageChanged>(_onNavigatedTo);
  }

  void _onNavigatedTo(NavigationPageChanged event, Emitter<NavigationState> emit) {
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

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
    emit(NavigationState(pageIndex: event.pageIndex));
  }
}

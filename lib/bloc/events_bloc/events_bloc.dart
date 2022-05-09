import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/bloc/bloc.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'events_event.dart';
part 'events_state.dart';
part 'events_bloc.freezed.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  final EventRepository _eventRepository = EventRepository();

  EventsBloc() : super(EventsState.initial()) {
    on<EventsRefreshed>(_onEventsRefreshed);
    on<EventsFetched>(_onEventsFetched);
  }

  Future<void> _onEventsRefreshed(
      EventsRefreshed event, Emitter<EventsState> emit) async {
    emit(EventsState.initial());
    this.add(EventsFetched(state.currentDay));
  }

  Future<void> _onEventsFetched(
      EventsFetched event, Emitter<EventsState> emit) async {
    try {
      final events = await _eventRepository.fetchEvents(
        targetMonth: event.targetMonth,
      );

      return emit(state.copyWith(
        status: EventsStatus.success,
        events: {...state.events}..addAll({event.targetMonth: events}),
      ));
    } catch (_) {
      emit(state.copyWith(status: EventsStatus.failure));
    }
  }
}

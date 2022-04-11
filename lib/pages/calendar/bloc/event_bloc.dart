import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/event_repository.dart';

part 'event_event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final EventRepository _eventRepository = EventRepository();

  EventBloc()
      : super(EventState(
            currentDay: DateTime.now(), selectedDay: DateTime.now())) {
    on<EventsFetched>(_onEventsFetched);
  }

  Future<void> _onEventsFetched(
      EventsFetched event, Emitter<EventState> emit) async {
    try {
      final events = await _eventRepository.fetchEvents(targetMonth: event.targetMonth);
      return emit(state.copyWith(
        status: EventStatus.success,
        events: events, // TODO: Add new events except of overriding
      ));
    } catch (_) {
      emit(state.copyWith(
        status: EventStatus.failure,
        events: {},
      ));
    }
  }
}

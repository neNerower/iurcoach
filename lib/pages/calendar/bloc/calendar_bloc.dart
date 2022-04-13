import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final EventRepository _eventRepository = EventRepository();

  CalendarBloc()
      : super(CalendarState(
            currentDay: DateTime.now(), selectedDay: DateTime.now())) {
    on<CalendarEventsFetched>(_onEventsFetched);
  }

  Future<void> _onEventsFetched(
      CalendarEventsFetched event, Emitter<CalendarState> emit) async {
    try {
      final events = await _eventRepository.fetchEvents(targetMonth: event.targetMonth);
      return emit(state.copyWith(
        status: CalendarStatus.success,
        events: events, // TODO: Add new events except of overriding
      ));
    } catch (_) {
      emit(state.copyWith(
        status: CalendarStatus.failure,
        events: {},
      ));
    }
  }
}

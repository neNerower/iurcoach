import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'event_event.dart';
part 'event_state.dart';
part 'event_bloc.freezed.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final ResultRepository _resultRepository = ResultRepository();

  EventBloc() : super(EventState.initial()) {
    on<EventUpdated>(_onEventUpdated);
    on<EventResultCreated>(_onEventResultCreated);
  }

  void _onEventUpdated(EventUpdated event, Emitter<EventState> emit) async {
    try {
      Result result =
          await _resultRepository.fetchResult(eventId: event.event.id);

      GoingStatus status = _chooseStatus(event.event);

      emit(EventState.data(event: event.event, result: result, status: status));
    } catch (e) {
      emit(EventState.data(event: event.event));
    }
  }

  void _onEventResultCreated(
      EventResultCreated event, Emitter<EventState> emit) {}

  GoingStatus _chooseStatus(Event event) {
    if (event.dateTime.isBefore(DateTime.now())) {
      return GoingStatus.disable;
    }
    return GoingStatus.unknown;
  }
}

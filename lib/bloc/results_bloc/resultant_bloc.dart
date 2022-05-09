import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'resultant_event.dart';
part 'resultant_state.dart';
part 'resultant_bloc.freezed.dart';

class ResultantBloc extends Bloc<ResultantEvent, ResultantState> {
  final ResultRepository _resultRepository = ResultRepository();
  final EventRepository _eventRepository = EventRepository();


  ResultantBloc() : super(ResultantState.initial()) {
    on<ResultantFetched>(_onResultantFetched);
  }

  void _onResultantFetched(ResultantFetched event, Emitter<ResultantState> emit) async {
    try {
      final results = await _resultRepository.fetchResults();

      List<Event> resultantEvents = [];

      // TODO: Add related results saving
      for (Result result in results) {
        final event = await _eventRepository.fetchEvent(id: result.eventId);
        resultantEvents.add(event);
      }
      
      return emit(ResultantState.success(resultantEvents: resultantEvents));
    } on Exception catch (e) {
      emit(ResultantState.failure(message: e.toString()));
    }
  }
}

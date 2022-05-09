import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'results_event.dart';
part 'results_state.dart';
part 'results_bloc.freezed.dart';

class ResultsBloc extends Bloc<ResultsEvent, ResultsState> {
  final ResultRepository _resultRepository = ResultRepository();
  final EventRepository _eventRepository = EventRepository();


  ResultsBloc() : super(ResultsState.initial()) {
    on<ResultsFetched>(_onResultsFetched);
  }

  void _onResultsFetched(ResultsFetched event, Emitter<ResultsState> emit) async {
    try {
      final results = await _resultRepository.fetchResults();

      List<Event> resultantEvents = [];

      // TODO: Add related results saving
      for (Result result in results) {
        final event = await _eventRepository.fetchEvent(id: result.eventId);
        resultantEvents.add(event);
      }
      
      return emit(ResultsState.success(resultantEvents: resultantEvents));
    } on Exception catch (e) {
      emit(ResultsState.failure(message: e.toString()));
    }
  }
}

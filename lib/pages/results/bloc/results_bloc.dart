import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iurc_mobile_app/models/models.dart';
import 'package:iurc_mobile_app/repositories/repositories.dart';

part 'results_event.dart';
part 'results_state.dart';
part 'results_bloc.freezed.dart';

class ResultsBloc extends Bloc<ResultsEvent, ResultsState> {
  final ResultRepository _resultRepository = ResultRepository();

  ResultsBloc() : super(ResultsState.initial()) {
    on<ResultsFetched>(_onResultsFetched);
  }

  void _onResultsFetched(ResultsFetched event, Emitter<ResultsState> emit) async {
    try {
      final results = await _resultRepository.fetchResults();
      
      return emit(ResultsState.success(results: results));
    } on Exception catch (e) {
      emit(ResultsState.failure(message: e.toString()));
    }
  }
}

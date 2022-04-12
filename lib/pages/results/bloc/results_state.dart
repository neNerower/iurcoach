part of 'results_bloc.dart';

@freezed
class ResultsState with _$ResultsState {
  const factory ResultsState.initial() = _ResultsInitial;
  const factory ResultsState.success({required List<Result> results}) =
      _ResultsSuccess;
  const factory ResultsState.failure(
      {@Default("Results fetching failure") String message}) = _ResultsFailure;

  // const factory ResultsState.addSuccess({}) = _ResultsAddSuccess;
  // const factory ResultsState.addFailure() = _ResultsAddFailure;
}

part of 'results_bloc.dart';

@freezed
class ResultsState with _$ResultsState {
  const factory ResultsState.initial() = _ResultsInitial;
  const factory ResultsState.success(
      {required List<Event> resultantEvents}) = _ResultsSuccess;
  const factory ResultsState.failure({String? message}) = _ResultsFailure;
}

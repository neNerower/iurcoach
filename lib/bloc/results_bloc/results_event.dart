part of 'results_bloc.dart';

@freezed
class ResultsEvent with _$ResultsEvent {
  const factory ResultsEvent.refreshed() = ResultsRefreshed;
  const factory ResultsEvent.fetched() = ResultsFetched;
}
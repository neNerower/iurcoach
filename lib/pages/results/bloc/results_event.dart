part of 'results_bloc.dart';

@freezed
class ResultsEvent with _$ResultsEvent {
  const factory ResultsEvent.fetched() = ResultsFetched;
  // const factory ResultsEvent.newCreated(Result result) = ResultsNewCreated;
}
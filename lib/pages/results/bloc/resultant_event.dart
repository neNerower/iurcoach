part of 'resultant_bloc.dart';

@freezed
class ResultantEvent with _$ResultantEvent {
  const factory ResultantEvent.fetched() = ResultantFetched;
}
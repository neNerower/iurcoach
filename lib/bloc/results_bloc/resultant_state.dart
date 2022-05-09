part of 'resultant_bloc.dart';

@freezed
class ResultantState with _$ResultantState {
  const factory ResultantState.initial() = _ResultantInitial;
  const factory ResultantState.success(
      {required List<Event> resultantEvents}) = _ResultantSuccess;
  const factory ResultantState.failure({String? message}) = _ResultantFailure;
}

part of 'event_bloc.dart';

enum GoingStatus { unknown, go, pass, disable }

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = _EventInitial;
  const factory EventState.data({
    required Event event,
    Result? result,
    @Default(GoingStatus.unknown) GoingStatus status,
  }) = _EventData;
  const factory EventState.failure({String? message}) = _EventFailure;
}

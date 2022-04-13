part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.updated(Event event) = EventUpdated;
  const factory EventEvent.statusChanged(GoingStatus status) = EventStatusChanged;
  const factory EventEvent.resultCreated(Result result) = EventResultCreated;
}
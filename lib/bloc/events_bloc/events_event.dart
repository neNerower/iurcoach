part of 'events_bloc.dart';

@freezed
class EventsEvent with _$EventsEvent {
  const factory EventsEvent.refresh() = EventsRefreshed;
  const factory EventsEvent.fetched(DateTime targetMonth) = EventsFetched;
}

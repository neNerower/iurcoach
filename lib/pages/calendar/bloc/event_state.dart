part of 'event_bloc.dart';

enum EventStatus { initial, success, failure }

class EventState extends Equatable {
  // TODO: Add month controll
  final DateTime currentDay;
  final DateTime selectedDay;
  final EventStatus status;
  final Map<DateTime, Event> events;

  const EventState({
    required this.currentDay,
    required this.selectedDay,
    this.status = EventStatus.initial,
    this.events = const <DateTime, Event>{},
  });

  EventState copyWith({
    DateTime? currentDay,
    DateTime? selectedDay,
    EventStatus? status,
    Map<DateTime, Event>? events,
  }) {
    return EventState(
      currentDay: currentDay ?? this.currentDay,
      selectedDay: selectedDay ?? this.selectedDay,
      status: status ?? this.status,
      events: events ?? this.events,
    );
  }

  @override
  List<Object?> get props => [currentDay, selectedDay, status, events];
}

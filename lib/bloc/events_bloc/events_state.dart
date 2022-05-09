part of 'events_bloc.dart';

enum EventsStatus { initial, success, failure }

class EventsState extends Equatable {
  // ? TODO: Add month controll
  final DateTime currentDay;
  final DateTime selectedDay;
  final EventsStatus status;
  final Map<DateTime, Map<DateTime, Event>> events;

  const EventsState({
    required this.currentDay,
    required this.selectedDay,
    required this.status,
    this.events = const {},
  });

  EventsState.initial()
      : this(
          currentDay: DateTime.now(),
          selectedDay: DateTime.now(),
          status: EventsStatus.initial,
        );

  EventsState copyWith({
    DateTime? currentDay,
    DateTime? selectedDay,
    EventsStatus? status,
    Map<DateTime, Map<DateTime, Event>>? events,
  }) {
    return EventsState(
      currentDay: currentDay ?? this.currentDay,
      selectedDay: selectedDay ?? this.selectedDay,
      status: status ?? this.status,
      events: events ?? this.events,
    );
  }

  @override
  List<Object?> get props => [currentDay, selectedDay, status, events];
}

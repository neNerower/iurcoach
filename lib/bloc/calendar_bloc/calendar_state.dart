part of 'calendar_bloc.dart';

enum CalendarStatus { initial, success, failure }

class CalendarState extends Equatable {
  // TODO: Add month controll
  final DateTime currentDay;
  final DateTime selectedDay;
  final CalendarStatus status;
  final Map<DateTime, Event> events;

  const CalendarState({
    required this.currentDay,
    required this.selectedDay,
    this.status = CalendarStatus.initial,
    this.events = const <DateTime, Event>{},
  });

  CalendarState copyWith({
    DateTime? currentDay,
    DateTime? selectedDay,
    CalendarStatus? status,
    Map<DateTime, Event>? events,
  }) {
    return CalendarState(
      currentDay: currentDay ?? this.currentDay,
      selectedDay: selectedDay ?? this.selectedDay,
      status: status ?? this.status,
      events: events ?? this.events,
    );
  }

  @override
  List<Object?> get props => [currentDay, selectedDay, status, events];
}

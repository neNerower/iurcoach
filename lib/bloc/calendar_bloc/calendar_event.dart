part of 'calendar_bloc.dart';

class CalendarEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CalendarEventsFetched extends CalendarEvent {
  final DateTime targetMonth;

  CalendarEventsFetched(this.targetMonth);

  @override
  List<Object?> get props => [targetMonth];
}

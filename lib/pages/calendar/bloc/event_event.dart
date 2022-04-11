part of 'event_bloc.dart';

class EventEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class EventsFetched extends EventEvent {
  final DateTime targetMonth;

  EventsFetched(this.targetMonth);

  @override
  List<Object?> get props => [targetMonth];
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required int id,
    required String eventTipe,
    required String description,
    required DateTime dateTime,
    required String place,
    // TODO: Change to list with IDs
    required int participants,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
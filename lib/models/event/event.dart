import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  // const Event._();

  const factory Event({
    required int id,
    required String eventType,
    required String description,
    required DateTime dateTime,
    required String place,
    // TODO: Change to list with IDs
    required List<int> participants,
  }) = _Event;

  // DateTime get date =>
  //     DateTime(this.dateTime.year, this.dateTime.month, this.dateTime.day);

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

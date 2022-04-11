// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Event _$$_EventFromJson(Map<String, dynamic> json) => _$_Event(
      id: json['id'] as int,
      eventType: json['eventType'] as String,
      description: json['description'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      place: json['place'] as String,
      participants:
          (json['participants'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_EventToJson(_$_Event instance) => <String, dynamic>{
      'id': instance.id,
      'eventType': instance.eventType,
      'description': instance.description,
      'dateTime': instance.dateTime.toIso8601String(),
      'place': instance.place,
      'participants': instance.participants,
    };

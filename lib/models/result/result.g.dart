// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      id: json['id'] as int? ?? -1,
      userId: json['userId'] as int,
      eventId: json['eventId'] as int,
      comment: json['comment'] as String? ?? "",
      date: DateTime.parse(json['date'] as String),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'eventId': instance.eventId,
      'comment': instance.comment,
      'date': instance.date.toIso8601String(),
      'photos': instance.photos,
    };

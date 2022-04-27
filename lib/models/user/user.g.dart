// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      birthdate: DateTime.parse(json['birthdate'] as String),
      weight: (json['weight'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      team: json['team'] as String,
      faculty: json['faculty'] as String,
      studGroup: json['studGroup'] as String,
      isuID: json['isuID'] as String,
      vkID: json['vkID'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      photoURL: json['photoURL'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthdate': instance.birthdate.toIso8601String(),
      'weight': instance.weight,
      'height': instance.height,
      'team': instance.team,
      'faculty': instance.faculty,
      'studGroup': instance.studGroup,
      'isuID': instance.isuID,
      'vkID': instance.vkID,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'photoURL': instance.photoURL,
    };

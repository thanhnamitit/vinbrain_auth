// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginSession _$$_LoginSessionFromJson(Map<String, dynamic> json) =>
    _$_LoginSession(
      specialId: json['specialId'] as String,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$_LoginSessionToJson(_$_LoginSession instance) =>
    <String, dynamic>{
      'specialId': instance.specialId,
      'dateTime': instance.dateTime?.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Time _$TimeFromJson(Map<String, dynamic> json) => Time(
      time: json['datetime'] as String,
      utcTime: json['utc_datetime'] as String,
    );

Map<String, dynamic> _$TimeToJson(Time instance) => <String, dynamic>{
      'datetime': instance.time,
      'utc_datetime': instance.utcTime,
    };

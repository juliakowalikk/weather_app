// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_units_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyUnitsDto _$DailyUnitsDtoFromJson(Map<String, dynamic> json) =>
    DailyUnitsDto(
      json['time'] as String,
      json['temperature_2m_max'] as String,
      json['temperature_2m_min'] as String,
      json['sunrise'] as String,
      json['sunset'] as String,
    );

Map<String, dynamic> _$DailyUnitsDtoToJson(DailyUnitsDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

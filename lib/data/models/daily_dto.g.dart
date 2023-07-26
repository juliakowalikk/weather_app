// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyDto _$DailyDtoFromJson(Map<String, dynamic> json) => DailyDto(
      (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      (json['temperature_2m_max'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['temperature_2m_min'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      (json['sunrise'] as List<dynamic>).map((e) => e as String).toList(),
      (json['sunset'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DailyDtoToJson(DailyDto instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m_max': instance.temperature2mMax,
      'temperature_2m_min': instance.temperature2mMin,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };

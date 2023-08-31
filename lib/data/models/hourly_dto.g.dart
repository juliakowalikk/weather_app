// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyDto _$HourlyDtoFromJson(Map<String, dynamic> json) => HourlyDto(
      (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      (json['temperature_2m'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$HourlyDtoToJson(HourlyDto instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
    };

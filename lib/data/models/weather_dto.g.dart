// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => WeatherDto(
      (json['latitude'] as num).toDouble(),
      DailyUnitsDto.fromJson(json['daily_units'] as Map<String, dynamic>),
      DailyDto.fromJson(json['daily'] as Map<String, dynamic>),
      (json['longitude'] as num).toDouble(),
      HourlyDto.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherDtoToJson(WeatherDto instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'daily_units': instance.dailyUnits,
      'daily': instance.daily,
      'hourly': instance.hourly,
    };

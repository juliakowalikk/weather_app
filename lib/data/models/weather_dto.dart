import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/models/daily_units_dto.dart';
import 'package:weather_app/data/models/hourly_dto.dart';

import 'daily_dto.dart';

part 'weather_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherDto {
  final double latitude;
  final double longitude;
  @JsonKey(name: 'daily_units')
  final DailyUnitsDto dailyUnits;
  final DailyDto daily;
  final HourlyDto hourly;

  const WeatherDto(
    this.latitude,
    this.dailyUnits,
    this.daily,
    this.longitude,
    this.hourly,
  );

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

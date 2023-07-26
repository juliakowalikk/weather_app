import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/models/daily_units_dto.dart';

import 'daily_dto.dart';

part 'weather_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherDto {
  final double latitude;
  @JsonKey(name: 'daily_units')
  final DailyUnitsDto dailyUnits;
  final DailyDto daily;

  WeatherDto(
    this.latitude,
    this.dailyUnits,
    this.daily,
  );

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

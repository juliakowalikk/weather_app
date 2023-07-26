import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_units_dto.g.dart';

@JsonSerializable()
class DailyUnitsDto {
  final String time;
  @JsonKey(name: 'temperature_2m_max')
  final String temperature2mMax;
  @JsonKey(name: 'temperature_2m_min')
  final String temperature2mMin;
  final String sunrise;
  final String sunset;

  DailyUnitsDto(
    this.time,
    this.temperature2mMax,
    this.temperature2mMin,
    this.sunrise,
    this.sunset,
  );

  factory DailyUnitsDto.fromJson(Map<String, dynamic> json) =>
      _$DailyUnitsDtoFromJson(json);
}

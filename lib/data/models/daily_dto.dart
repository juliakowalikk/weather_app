import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_dto.g.dart';

@JsonSerializable()
class DailyDto {
  final List<String> time;
  @JsonKey(name: 'temperature_2m_max')
  final List<double> temperature2mMax;
  @JsonKey(name: 'temperature_2m_min')
  final List<double> temperature2mMin;
  final List<String> sunrise;
  final List<String> sunset;

  DailyDto(
    this.time,
    this.temperature2mMax,
    this.temperature2mMin,
    this.sunrise,
    this.sunset,
  );
  factory DailyDto.fromJson(Map<String, dynamic> json) =>
      _$DailyDtoFromJson(json);
}

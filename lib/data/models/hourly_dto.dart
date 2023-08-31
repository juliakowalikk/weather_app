import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_dto.g.dart';

@JsonSerializable()
class HourlyDto {
  final List<String> time;
  @JsonKey(name: 'temperature_2m')
  final List<double> temperature2m;

  HourlyDto(
    this.time,
    this.temperature2m,
  );
  factory HourlyDto.fromJson(Map<String, dynamic> json) =>
      _$HourlyDtoFromJson(json);
}

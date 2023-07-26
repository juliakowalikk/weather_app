import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/data/models/weather_dto.dart';
import 'package:weather_app/domain/weather.dart';

class WeatherDtoMapper {
  Weather call(WeatherDto dto) => Weather(
        minTemperature: dto.daily.temperature2mMin.first,
        maxTemperature: dto.daily.temperature2mMax.first,
        location: MyLocation(city: '', country: ''),
      );
}

import 'package:geocoding/geocoding.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/data/models/weather_dto.dart';
import 'package:weather_app/domain/weather.dart';

class WeatherDtoMapper {
  Future<Weather> call(WeatherDto dto) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
        dto.latitude, dto.longitude,
        localeIdentifier: 'en');
    Placemark placeMark = placemarks[0];
    return Weather(
      temperature: dto.hourly.temperature2m,
      time: dto.hourly.time,
      sunrise: dto.daily.sunrise.first,
      sunset: dto.daily.sunset.first,
      minTemperature: dto.daily.temperature2mMin.first,
      maxTemperature: dto.daily.temperature2mMax.first,
      location:
          MyLocation(city: placeMark.locality, country: placeMark.country),
    );
  }
}

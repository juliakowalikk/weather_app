import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/data/mappers/weather_dto_mapper.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/data/models/weather_dto.dart';
import 'package:weather_app/domain/weather.dart';

part 'weather_cubit.freezed.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(const WeatherState.initial());
  final mapper = WeatherDtoMapper();

  Future<void> getWeather(String address, MyLocation myLocation) async {
    try {
      GeoCode geoCode = GeoCode();
      myLocation.city = address;
      Coordinates coordinates =
          await geoCode.forwardGeocoding(address: address);

      final weatherResult = await Dio().get(
          'https://api.open-meteo.com/v1/forecast?latitude=${coordinates.latitude}&longitude=${coordinates.longitude}&hourly=temperature_2m&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=1');
      final WeatherDto dto = WeatherDto.fromJson(weatherResult.data);
      final Weather weather = await mapper(dto);

      emit(WeatherState.goToResultPage(weather));
    } catch (e) {
      emit(const WeatherState.errorGetWeather());
    }
  }

  Future<void> getDefaultWeather() async {
    final List<Weather> weather = [];
    final position = await Geolocator.getCurrentPosition();
    try {
      getMyLocationWeather();
      final myWeatherResult = await getDefaultWeatherDio(
          'https://api.open-meteo.com/v1/forecast?latitude=${position.latitude}&longitude=${position.longitude}&hourly=temperature_2m&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=1');
      weather.add(myWeatherResult);

      final weatherRome = await getDefaultWeatherDio(
          'https://api.open-meteo.com/v1/forecast?latitude=41.8919&longitude=12.5113&hourly=temperature_2m&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,rain_sum,snowfall_sum&timezone=auto&forecast_days=1');
      weather.add(weatherRome);

      final weatherLondon = await getDefaultWeatherDio(
          'https://api.open-meteo.com/v1/forecast?latitude=51.5085&longitude=-0.1257&hourly=temperature_2m&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,rain_sum,snowfall_sum&timezone=auto&forecast_days=1');
      weather.add(weatherLondon);

      final weatherBarcelona = await getDefaultWeatherDio(
          'https://api.open-meteo.com/v1/forecast?latitude=41.3888&longitude=2.159&hourly=temperature_2m&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset,rain_sum,snowfall_sum&timezone=auto&forecast_days=1');
      weather.add(weatherBarcelona);

      final weatherLosAngeles = await getDefaultWeatherDio(
          'https://api.open-meteo.com/v1/forecast?latitude=34.0522&longitude=-118.2437&hourly=temperature_2m&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=1');
      weather.add(weatherLosAngeles);

      emit(WeatherState.loaded(weather));
    } catch (e) {
      emit(const WeatherState.errorDefaultWeather());
    }
  }

  Future<Weather> getDefaultWeatherDio(String link) async {
    final Response<dynamic> result = await Dio().get(link);
    final WeatherDto dto = WeatherDto.fromJson(result.data);
    final Weather weather = await mapper(dto);
    return weather;
  }

  Future<void> getMyLocationWeather() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocode/geocode.dart';
import 'package:geocoding/geocoding.dart';
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
    GeoCode geoCode = GeoCode();
    myLocation.city = address;
    Coordinates coordinates = await geoCode.forwardGeocoding(address: address);

    final weatherResult = await Dio().get(
        'https://api.open-meteo.com/v1/forecast?latitude=${coordinates.latitude}&longitude=${coordinates.longitude}&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=1');
    final WeatherDto dto = WeatherDto.fromJson(weatherResult.data);
    final Weather weather = mapper(dto);
    emit(WeatherState.loaded(weather, myLocation));
  }

  Future<Position> determinePosition() async {
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
    final position = await Geolocator.getCurrentPosition();

    List<Placemark> newPlace =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    Placemark placeMark = newPlace[0];
    final myLocation =
        MyLocation(city: placeMark.locality, country: placeMark.country);
    final weatherResult = await Dio().get(
        'https://api.open-meteo.com/v1/forecast?latitude=${position.latitude}&longitude=${position.longitude}&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=1');
    final WeatherDto dto = WeatherDto.fromJson(weatherResult.data);
    final Weather weather = mapper(dto);

    emit(WeatherState.loaded(weather, myLocation));
    return position;
  }

  Future<void> getDefaultWeather() async {
    final List<Weather> weather = [];
    final weatherRomeResult = await Dio().get(
        'https://api.open-meteo.com/v1/forecast?latitude=41.8919&longitude=12.5113&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=1');
    final WeatherDto romeDto = WeatherDto.fromJson(weatherRomeResult.data);
    final Weather weatherRome = mapper(romeDto);
    weather.add(weatherRome);

    final weatherLondonResult = await Dio().get(
        'https://api.open-meteo.com/v1/forecast?latitude=51.5085&longitude=-0.1257&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=1');
    final WeatherDto londonDto = WeatherDto.fromJson(weatherLondonResult.data);
    final Weather weatherLondon = mapper(londonDto);
    weather.add(weatherLondon);

    final weatherBarcelonaResult = await Dio().get(
        'https://api.open-meteo.com/v1/forecast?latitude=41.3888&longitude=2.159&daily=temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=auto&forecast_days=1');
    final WeatherDto barcelonaDto =
        WeatherDto.fromJson(weatherBarcelonaResult.data);
    final Weather weatherBarcelona = mapper(barcelonaDto);
    weather.add(weatherBarcelona);

    emit(WeatherState.loading(weather));
  }
}

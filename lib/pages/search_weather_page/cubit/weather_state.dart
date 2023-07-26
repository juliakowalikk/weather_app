part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading(List<Weather> weather) = _Loading;
  const factory WeatherState.loaded(Weather weather, MyLocation myLocation) =
      Loaded;
}

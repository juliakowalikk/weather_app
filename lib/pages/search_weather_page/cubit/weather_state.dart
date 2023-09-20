part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loaded(List<Weather> weather) = WeatherLoadedState;
  const factory WeatherState.goToResultPage(Weather weather) =
      WeatherGoToResultPageState;
  const factory WeatherState.errorGetWeather() = ErrorGetWeather;
  const factory WeatherState.errorDefaultWeather() = ErrorDefaultWeather;
}

import 'package:weather_app/data/models/location.dart';

class Weather {
  final double minTemperature;
  final double maxTemperature;
  final MyLocation location;
  final DateTime sunset;
  final DateTime sunrise;
  final List<DateTime> time;
  final List<double> temperature;

  const Weather({
    required this.minTemperature,
    required this.maxTemperature,
    required this.location,
    required this.sunrise,
    required this.sunset,
    required this.time,
    required this.temperature,
  });
}

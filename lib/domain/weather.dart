import 'package:weather_app/data/models/location.dart';

class Weather {
  final double minTemperature;
  final double maxTemperature;
  final MyLocation location;

  Weather({
    required this.minTemperature,
    required this.maxTemperature,
    required this.location,
  });
}

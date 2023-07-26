import 'package:flutter/material.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/pages/weather_result_page/widgets/weather_result_body.dart';

class WeatherResultPage extends StatelessWidget {
  final Weather weather;
  final MyLocation myLocation;

  const WeatherResultPage({
    super.key,
    required this.weather,
    required this.myLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            WeatherResultBody(
              myLocation: myLocation,
              weatherImage: weather.minTemperature > 20
                  ? 'assets/images/hot.jpg'
                  : 'assets/images/cold.jpg',
              weather: weather,
            ),
          ],
        ),
      ),
    );
  }
}

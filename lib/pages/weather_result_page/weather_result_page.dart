import 'package:flutter/material.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/pages/weather_result_page/widgets/weather_result_body.dart';

class WeatherResultPage extends StatelessWidget {
  final Weather weather;

  const WeatherResultPage({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter:
                      const ColorFilter.mode(Colors.grey, BlendMode.modulate),
                  image: AssetImage(
                    weather.maxTemperature > 25
                        ? 'assets/images/hot_search_page.jpg'
                        : weather.maxTemperature > 20
                            ? 'assets/images/moderately_hot_search_page.jpg'
                            : weather.maxTemperature > 10
                                ? 'assets/images/cloudy_search_page.jpg'
                                : 'assets/images/cold_search_page.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  WeatherResultBody(weather: weather),
                ],
              ),
            )
          ],
        ),
      );
}

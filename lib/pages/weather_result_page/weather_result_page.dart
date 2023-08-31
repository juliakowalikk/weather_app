import 'package:flutter/material.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/pages/weather_result_page/widgets/hourly_result_body.dart';
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
      backgroundColor: const Color(0xFFF4F4FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              WeatherResultBody(
                myLocation: myLocation,
                weatherImage: weather.maxTemperature > 25
                    ? 'assets/images/hot_search_page.jpg'
                    : weather.maxTemperature > 20
                        ? 'assets/images/moderately_hot_search_page.jpg'
                        : weather.maxTemperature > 10
                            ? 'assets/images/cloudy_search_page.jpg'
                            : 'assets/images/cold_search_page.jpg',
                weather: weather,
              ),
              Container(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: weather.time.length,
                    itemBuilder: (context, index) {
                      return HourlyResultBody(
                          time: weather.time[index],
                          temperature: weather.temperature[index],
                          weather: weather);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

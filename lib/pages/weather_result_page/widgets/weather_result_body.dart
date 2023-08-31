import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/style/app_typography.dart';

class WeatherResultBody extends StatelessWidget {
  final MyLocation myLocation;
  final String weatherImage;
  final Weather weather;

  const WeatherResultBody({
    super.key,
    required this.weatherImage,
    required this.myLocation,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    String today = DateFormat('EEEE, MMMM d').format(DateTime.now());
    DateTime sunriseDate = DateTime.parse(weather.sunrise);
    var hhSunrise = sunriseDate.hour;
    var mmSunrise = sunriseDate.minute;
    DateTime sunsetDate = DateTime.parse(weather.sunset);
    var hhSunset = sunsetDate.hour;
    var mmSunset = sunsetDate.minute;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(weatherImage),
                  fit: BoxFit.cover,
                  colorFilter:
                      const ColorFilter.mode(Colors.grey, BlendMode.modulate)),
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Text('${myLocation.city}', style: AppTypography.style5),
                  Text(today, style: AppTypography.style4),
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: RichText(
                      text: TextSpan(
                        text: 'Minimal temperature ',
                        style: const TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                              text: '${weather.minTemperature}',
                              style: AppTypography.style3),
                          TextSpan(text: '°', style: AppTypography.style3),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8, right: 8, top: 0, bottom: 40),
                    child: RichText(
                      text: TextSpan(
                        text: 'Maximum temperature ',
                        style: const TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                              text: '${weather.maxTemperature}',
                              style: AppTypography.style3),
                          TextSpan(text: '°', style: AppTypography.style3),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/sunrise.png',
                          scale: 12,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Sunrise: $hhSunrise:$mmSunrise',
                            style: AppTypography.style4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/sunset.png',
                          scale: 12,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Sunset: $hhSunset:$mmSunset',
                              style: AppTypography.style4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

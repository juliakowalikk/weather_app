import 'package:flutter/material.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/domain/weather.dart';

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
  Widget build(BuildContext context) => Center(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'Your weather for the city of ',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '${myLocation.city}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  weatherImage,
                  scale: 10,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Min temperature ',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '${weather.minTemperature}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text: '°C',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Max temperature ',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '${weather.maxTemperature}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text: '°C',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}

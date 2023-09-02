import 'package:flutter/material.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/style/app_typography.dart';

class HourlyResultBody extends StatelessWidget {
  final String time;
  final double temperature;
  final Weather weather;
  const HourlyResultBody(
      {super.key,
      required this.time,
      required this.temperature,
      required this.weather});

  @override
  Widget build(BuildContext context) => Container(
        width: 80,
        decoration: const BoxDecoration(color: Colors.transparent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                time,
                style: AppTypography.style6,
              ),
            ),
            Text(
              '$temperature°',
              style: AppTypography.style7,
            ),
          ],
        ),
      );
}

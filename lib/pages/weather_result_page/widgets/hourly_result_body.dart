import 'package:flutter/material.dart';
import 'package:weather_app/domain/weather.dart';

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
        decoration: const BoxDecoration(color: Colors.blue),
        child: Column(
          children: [
            Text('$time'),
            Text('$temperature'),
          ],
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:weather_app/style/app_typography.dart';

class WeatherTemperature extends StatelessWidget {
  final double weatherTemp;
  final String textTemp;

  const WeatherTemperature({
    super.key,
    required this.weatherTemp,
    required this.textTemp,
  });

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: RichText(
              text: TextSpan(
                text: textTemp,
                style: const TextStyle(color: Colors.white),
                children: [
                  TextSpan(text: '$weatherTemp', style: AppTypography.style3),
                  TextSpan(
                    text: '°',
                    style: AppTypography.style3,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}

import 'package:flutter/material.dart';
import 'package:weather_app/style/app_typography.dart';

class WeatherSun extends StatelessWidget {
  final String assetImage;
  final String time;
  const WeatherSun({
    super.key,
    required this.assetImage,
    required this.time,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              assetImage,
              scale: 12,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sunrise: $time',
                style: AppTypography.style4,
              ),
            ),
          ],
        ),
      );
}

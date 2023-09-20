import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/search_weather_page/cubit/weather_cubit.dart';
import 'package:weather_app/style/app_typography.dart';

class DefaultWeatherContainer extends StatelessWidget {
  final String? country;
  final double temperature;
  final String? city;
  final String imageAsset;

  const DefaultWeatherContainer({
    super.key,
    required this.temperature,
    required this.city,
    required this.imageAsset,
    required this.country,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageAsset),
                fit: BoxFit.cover,
                colorFilter:
                    const ColorFilter.mode(Colors.grey, BlendMode.modulate),
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 30),
                      child: Text(
                        country!,
                        style: AppTypography.style6,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 30, left: 8, top: 6),
                      child: Text(city!, style: AppTypography.style7),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('$temperature°', style: AppTypography.style5),
                ),
              ],
            ),
          ),
        ),
      );
}

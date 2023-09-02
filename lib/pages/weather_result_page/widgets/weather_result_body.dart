import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/pages/weather_result_page/widgets/weather_sun.dart';
import 'package:weather_app/pages/weather_result_page/widgets/weather_temperature.dart';
import 'package:weather_app/style/app_typography.dart';

import 'hourly_result_list_view.dart';

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
    String sunriseTime = DateFormat.jm().format(weather.sunrise);
    String sunsetTime = DateFormat.jm().format(weather.sunset);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(weatherImage),
                fit: BoxFit.cover,
                colorFilter:
                    const ColorFilter.mode(Colors.grey, BlendMode.modulate),
              ),
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Text(
                    '${myLocation.city}',
                    style: AppTypography.style5,
                  ),
                  Text(today, style: AppTypography.style4),
                  WeatherTemperature(
                    weatherTemp: weather.minTemperature,
                    textTemp: 'Minimal temperature ',
                  ),
                  WeatherTemperature(
                    weatherTemp: weather.maxTemperature,
                    textTemp: 'Maximum temperature ',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      height: 130,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: weather.time.length,
                          itemBuilder: (context, index) {
                            String formattedDate =
                                DateFormat.j().format(weather.time[index]);
                            return HourlyResultBody(
                                time: formattedDate,
                                temperature: weather.temperature[index],
                                weather: weather);
                          }),
                    ),
                  ),
                  WeatherSun(
                      assetImage: 'assets/images/sunrise.png',
                      time: sunriseTime),
                  WeatherSun(
                    assetImage: 'assets/images/sunset.png',
                    time: sunsetTime,
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

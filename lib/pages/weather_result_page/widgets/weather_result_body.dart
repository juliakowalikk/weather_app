import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/pages/weather_result_page/widgets/weather_sun.dart';
import 'package:weather_app/pages/weather_result_page/widgets/weather_temperature.dart';
import 'package:weather_app/style/app_typography.dart';

import 'hourly_result_container.dart';

class WeatherResultBody extends StatelessWidget {
  final Weather weather;

  const WeatherResultBody({
    super.key,
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
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                  '${weather.location.city}',
                  style: AppTypography.style5,
                ),
                Text(today, style: AppTypography.style4),
                WeatherTemperature(
                  weatherTemp: weather.minTemperature,
                  textTemp: Strings.of(context).minTemp,
                ),
                WeatherTemperature(
                  weatherTemp: weather.maxTemperature,
                  textTemp: Strings.of(context).maxTemp,
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
                          return HourlyResulContainer(
                              time: formattedDate,
                              temperature: weather.temperature[index],
                              weather: weather);
                        }),
                  ),
                ),
                WeatherSun(
                    sunMoment: Strings.of(context).sunrise,
                    assetImage: 'assets/images/sunrise.png',
                    time: sunriseTime),
                WeatherSun(
                  sunMoment: Strings.of(context).sunset,
                  assetImage: 'assets/images/sunset.png',
                  time: sunsetTime,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

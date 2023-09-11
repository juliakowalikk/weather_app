import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/pages/search_weather_page/cubit/weather_cubit.dart';
import 'package:weather_app/pages/search_weather_page/widgets/default_weather_container.dart';
import 'package:weather_app/pages/search_weather_page/widgets/search_weather_body.dart';
import 'package:weather_app/pages/weather_result_page/weather_result_page.dart';
import 'package:weather_app/style/app_typography.dart';

class SearchWeatherPage extends StatelessWidget {
  const SearchWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    String today = DateFormat('EEEE, d MMMM').format(DateTime.now());

    return BlocProvider(
      create: (context) => WeatherCubit()..getDefaultWeather(),
      child: BlocConsumer<WeatherCubit, WeatherState>(
        buildWhen: (WeatherState previousState, WeatherState currentState) =>
            currentState is WeatherLoadedState,
        listener: (context, state) => state.maybeWhen(
          goToResultPage: (Weather weather) => goToResultPage(context, weather),
          orElse: () => null,
        ),
        builder: (context, state) => Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      Strings.of(context).searchWeatherTitle,
                      style: AppTypography.style12,
                    ),
                  ),
                  const SearchWeatherBody(),
                  state.maybeWhen(
                    loaded: (List<Weather> weather) => Column(
                      children: [
                        Text(today, style: AppTypography.style7),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: weather.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              InkWell(
                                child: DefaultWeatherContainer(
                                    country: weather[index].location.country,
                                    temperature: weather[index].maxTemperature,
                                    city: weather[index].location.city,
                                    imageAsset: weather[index].maxTemperature >
                                            25
                                        ? 'assets/images/hot_search_page.jpg'
                                        : weather[index].maxTemperature > 20
                                            ? 'assets/images/moderately_hot_search_page.jpg'
                                            : weather[index].maxTemperature > 10
                                                ? 'assets/images/cloudy_search_page.jpg'
                                                : 'assets/images/cold_search_page.jpg'),
                                onTap: () =>
                                    goToResultPage(context, weather[index]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    orElse: () => const SizedBox(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void goToResultPage(BuildContext context, Weather weather) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WeatherResultPage(weather: weather),
      ));
}

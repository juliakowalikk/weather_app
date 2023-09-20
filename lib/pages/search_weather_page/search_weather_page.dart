import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/pages/search_weather_page/cubit/weather_cubit.dart';
import 'package:weather_app/pages/search_weather_page/widgets/default_weather_container.dart';
import 'package:weather_app/pages/search_weather_page/widgets/search_weather_body.dart';
import 'package:weather_app/pages/weather_result_page/weather_result_page.dart';

class SearchWeatherPage extends StatelessWidget {
  const SearchWeatherPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => WeatherCubit()..getDefaultWeather(),
        child: ScaffoldMessenger(
          child: BlocConsumer<WeatherCubit, WeatherState>(
            buildWhen:
                (WeatherState previousState, WeatherState currentState) =>
                    currentState is WeatherLoadedState ||
                    currentState is ErrorDefaultWeather,
            listener: _listener,
            builder: (context, state) => Scaffold(
              backgroundColor: Colors.black,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SearchWeatherBody(),
                      state.maybeWhen(
                        loaded: (List<Weather> weather) => ListView.builder(
                          shrinkWrap: true,
                          itemCount: weather.length,
                          itemBuilder: (context, index) => InkWell(
                            child: DefaultWeatherContainer(
                              country: weather[index].location.country,
                              temperature: weather[index].maxTemperature,
                              city: weather[index].location.city,
                              imageAsset: weather[index].maxTemperature > 25
                                  ? 'assets/images/hot_search_page.jpg'
                                  : weather[index].maxTemperature > 20
                                      ? 'assets/images/moderately_hot_search_page.jpg'
                                      : weather[index].maxTemperature > 10
                                          ? 'assets/images/cloudy_search_page.jpg'
                                          : 'assets/images/cold_search_page.jpg',
                            ),
                            onTap: () =>
                                goToResultPage(context, weather[index]),
                          ),
                        ),
                        errorDefaultWeather: () => Column(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(
                                'Oops! Something went wrong',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
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
        ),
      );

  void goToResultPage(BuildContext context, Weather weather) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WeatherResultPage(weather: weather),
      ));

  void _listener(BuildContext context, WeatherState state) {
    state.maybeWhen(
        goToResultPage: (Weather weather) => goToResultPage(context, weather),
        orElse: () => null);
    if (state is ErrorGetWeather) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.blue.shade900,
          content: const Text('Enter correct city name'),
        ),
      );
    }
  }
}

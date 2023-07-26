import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/domain/weather.dart';
import 'package:weather_app/pages/search_weather_page/cubit/weather_cubit.dart';
import 'package:weather_app/pages/search_weather_page/widgets/search_weather_body.dart';
import 'package:weather_app/pages/weather_result_page/weather_result_page.dart';

class SearchWeatherPage extends StatelessWidget {
  const SearchWeatherPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => WeatherCubit()..getDefaultWeather(),
        child: BlocConsumer<WeatherCubit, WeatherState>(
          listener: (context, state) => state.maybeWhen(
            loaded: (Weather weather, MyLocation myLocation) => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WeatherResultPage(
                  weather: weather,
                  myLocation: myLocation,
                ),
              ),
            ),
            orElse: () => null,
          ),
          builder: (context, state) {
            return Scaffold(
              body: Column(
                children: [
                  const SearchWeatherBody(),
                  state.maybeWhen(
                    loading: (List<Weather> weather) => Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: weather.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                        '${weather[index].maxTemperature}'),
                                  ),
                                  ListTile(
                                    title: Text('${weather[index].location}'),
                                  )
                                ],
                              );
                            }),
                      ],
                    ),
                    orElse: () => const SizedBox(),
                  )
                ],
              ),
            );
          },
        ),
      );
}

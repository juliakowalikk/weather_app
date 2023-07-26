import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/pages/search_weather_page/cubit/weather_cubit.dart';

class SearchWeatherBody extends StatefulWidget {
  const SearchWeatherBody({super.key});

  @override
  State<SearchWeatherBody> createState() => _SearchWeatherBody();
}

class _SearchWeatherBody extends State<SearchWeatherBody> {
  final cityTextField = TextEditingController();

  @override
  void dispose() {
    cityTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  hintText: 'Enter city to search weather...'),
              controller: cityTextField,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200),
              onPressed: () => context.read<WeatherCubit>().getWeather(
                  cityTextField.text, MyLocation(city: null, country: null)),
              child: const Text('See weather'),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200),
                onPressed: () =>
                    context.read<WeatherCubit>().determinePosition(),
                child: const Text('Get my current position')),
          ],
        ),
      ),
    );
  }
}

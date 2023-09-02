import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_app/data/models/location.dart';
import 'package:weather_app/pages/search_weather_page/cubit/weather_cubit.dart';
import 'package:weather_app/style/app_typography.dart';

class SearchWeatherBody extends StatefulWidget {
  const SearchWeatherBody({super.key});

  @override
  State<SearchWeatherBody> createState() => _SearchWeatherBody();
}

class _SearchWeatherBody extends State<SearchWeatherBody> {
  final cityTextField = TextEditingController();

  bool submit = false;

  @override
  void initState() {
    super.initState();
    cityTextField.addListener(
        () => setState(() => submit = cityTextField.text.isNotEmpty));
  }

  @override
  void dispose() {
    cityTextField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: submit
                          ? () => context.read<WeatherCubit>().getWeather(
                              cityTextField.text,
                              MyLocation(city: null, country: null))
                          : null,
                    ),
                    hintText: Strings.of(context).searchHint),
                controller: cityTextField,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: context.read<WeatherCubit>().determinePosition,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      Strings.of(context).searchLocation,
                      style: AppTypography.style9,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

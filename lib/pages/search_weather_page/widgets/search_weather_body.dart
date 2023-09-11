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
        child: Column(
          children: [
            TextField(
              style: AppTypography.style13,
              decoration: InputDecoration(
                hintStyle: AppTypography.style10,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                filled: true,
                fillColor: Colors.grey.shade900,
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                  ),
                  onPressed: submit
                      ? () => context.read<WeatherCubit>().getWeather(
                          cityTextField.text,
                          MyLocation(city: null, country: null))
                      : null,
                ),
                hintText: (Strings.of(context).searchHint),
              ),
              controller: cityTextField,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 20),
                child: GestureDetector(
                  onTap: context.read<WeatherCubit>().determinePosition,
                  child: Text(
                    Strings.of(context).searchLocation,
                    style: AppTypography.style11,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

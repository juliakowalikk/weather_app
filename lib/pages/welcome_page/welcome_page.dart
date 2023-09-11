import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/search_weather_page/search_weather_page.dart';
import 'package:weather_app/pages/welcome_page/cubit/welcome_cubit.dart';
import 'package:weather_app/pages/welcome_page/widgets/welcome_body.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => WelcomeCubit()..init(),
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: BlocListener<WelcomeCubit, WelcomeState>(
              listener: (context, state) => state.maybeWhen(
                  loaded: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchWeatherPage(),
                        ),
                      ),
                  orElse: () => null),
              child: const WelcomeBody()
                  .animate()
                  .fade(duration: const Duration(seconds: 3))
                  .scale(duration: const Duration(seconds: 1)),
            ),
          ),
        ),
      );
}

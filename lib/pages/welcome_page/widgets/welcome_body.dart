import 'package:flutter/material.dart';
import 'package:weather_app/style/app_typography.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Discover \nthe weather \nin your city',
            textAlign: TextAlign.center,
            style: AppTypography.style1,
          ),
          Image.asset('assets/images/welcome_page.jpg'),
          Text(
            'Get know your weather \nmaps and radar precipitation \nforecast',
            style: AppTypography.style2,
            textAlign: TextAlign.center,
          ),
        ],
      );
}

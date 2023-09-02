import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_app/style/app_typography.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            Strings.of(context).welcomeTitle,
            textAlign: TextAlign.center,
            style: AppTypography.style1,
          ),
          Image.asset('assets/images/welcome_page.jpg'),
          Text(
            Strings.of(context).welcomeDescription,
            style: AppTypography.style2,
            textAlign: TextAlign.center,
          ),
        ],
      );
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:weather_app/style/app_typography.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/calendar_5903846.png',
                height: 200,
                width: 200,
              ),
            ),
            Text(
              Strings.of(context).welcomeTitle,
              textAlign: TextAlign.center,
              style: AppTypography.style1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Strings.of(context).welcomeDescription,
                style: AppTypography.style2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );
}

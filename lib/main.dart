import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weather_app/pages/welcome_page/welcome_page.dart';

void main() => runApp(
      const MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          Strings.delegate
        ],
        supportedLocales: [Locale('en')],
        home: WelcomePage(),
      ),
    );

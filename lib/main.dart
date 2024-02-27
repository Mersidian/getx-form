import 'package:flutter/material.dart';
import 'views/main_view.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  Intl.defaultLocale = "th";
  initializeDateFormatting();
  runApp(const GetXForm());
}

class GetXForm extends StatelessWidget {
  const GetXForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GetX Form",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.red,
        ),
      ),
      home: const MainView(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'), // English
        Locale('th', 'TH'), // Thai
      ],
    );
  }
}

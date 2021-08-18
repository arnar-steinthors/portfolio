import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/themes.dart';
import 'package:portfolio/views/home_page/controllers/menuController.dart';
import 'package:portfolio/views/home_page/home_page.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Verkefni Arnars',
      // theme config
      themeMode: ThemeMode.light,
      darkTheme: DarkTheme.darkTheme,
      theme: LightTheme.lightTheme,
      // localization config
      locale: Get.deviceLocale,
      fallbackLocale: Locale('is'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('is', ''),
        Locale('pl', ''),
      ],
      home: HomePage(),
    );
  }
}

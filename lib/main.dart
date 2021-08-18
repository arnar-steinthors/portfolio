import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/services/l10nService.dart';
import 'package:portfolio/services/themeService.dart';
import 'package:portfolio/themes.dart';
import 'package:portfolio/views/home_page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Verkefni Arnars',
      // theme config
      themeMode: ThemeService().theme,
      darkTheme: DarkTheme.darkTheme,
      theme: LightTheme.lightTheme,
      // localization config
      locale: L10nService().locale,
      // fallbackLocale: Locale('is'),
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
      home: HomePage(), // todo: add a load screen
    );
  }
}

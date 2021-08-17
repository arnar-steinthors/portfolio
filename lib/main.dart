import 'package:flutter/material.dart';
import 'package:portfolio/themes.dart';
import 'package:portfolio/views/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arnar Steinþórsson',
      themeMode: ThemeMode.dark,
      darkTheme: DarkTheme.darkTheme,
      theme: LightTheme.lightTheme,
      home: HomePage(),
    );
  }
}


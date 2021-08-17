import 'package:flutter/material.dart';

class BaseTheme  {
  final String fontFamily = 'Poppins';
  final Color primaryColor = Colors.redAccent;

  ThemeData themeData() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      backgroundColor: Colors.green,
      scaffoldBackgroundColor: Colors.blueGrey,
      textTheme: TextTheme(
        headline1: TextStyle(color: Colors.green)
      )
      // primaryColorBrightness: ThemeData.estimateBrightnessForColor(primarySurfaceColor),
      // canvasColor: colorScheme.background,
      // accentColor: colorScheme.secondary,
      // accentColorBrightness: ThemeData.estimateBrightnessForColor(colorScheme.secondary),
      // scaffoldBackgroundColor: colorScheme.background,
      // bottomAppBarColor: colorScheme.surface,
      // cardColor: colorScheme.surface,
      // dividerColor: colorScheme.onSurface.withOpacity(0.12),
      // backgroundColor: colorScheme.background,
      // dialogBackgroundColor: colorScheme.background,
      // errorColor: colorScheme.error,
      // textTheme: textTheme,
      // indicatorColor: onPrimarySurfaceColor,
      // applyElevationOverlayColor: isDark,
      // colorScheme: colorScheme,
    );
  }




}

class LightTheme {
  static ThemeData get lightTheme {
    return ThemeData();
  }
}

class DarkTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.blueGrey,
    );
  }
}

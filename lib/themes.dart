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
    Color whiteColor = Color(0xfff4f6f6);
    final String fontFamily = 'Poppins';

    return ThemeData(
      fontFamily: fontFamily,
      colorScheme: ColorScheme.light(
        primary: Color(0xFF0E7DE3),
        primaryVariant: Color(0xff075fb4),
        secondary: Color(0xffE3740E),
        secondaryVariant: Color(0xff018786),
        surface: whiteColor,
        background: Colors.grey,
        error: Color(0xffb00020),
        onPrimary: whiteColor,
        onSecondary: Colors.black,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: whiteColor,
        brightness: Brightness.light,
      )
    );
  }
}

class DarkTheme {
  static ThemeData get darkTheme {
    return ThemeData(

        colorScheme: ColorScheme.dark(
          background: Colors.green,
          onBackground: Colors.blueGrey,
          surface: Colors.pink,
          primary: Colors.white,
          onPrimary: Colors.yellow,
          onSecondary: Colors.orange,
        ),
    );
  }
}

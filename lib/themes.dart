import 'package:flutter/material.dart';

const String fontFamily = 'Poppins';

class LightTheme {
  static ThemeData get lightTheme {
    Color whiteColor = Color(0xfff4f6f6);


    return ThemeData(
      // todo: implement dividerTheme()
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
      ) // todo: implement .copyWith()
    );
  }
}

class DarkTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      fontFamily: fontFamily,
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

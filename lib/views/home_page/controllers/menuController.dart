import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Languages {
  icelandic,
  english,
  polish,
}

class MenuController extends GetxController {
  RxBool darkTheme = false.obs;  // todo: initial value should be from local storage

  void changeTheme() {
    darkTheme.value = !darkTheme.value;
    ThemeData theme = darkTheme.value ? ThemeData.dark() : ThemeData.light();
    Get.changeTheme(theme);
  }

  String get themeString {
    return darkTheme.value ? S().darkMode : S().lightMode;
  }

  IconData get themeIcon {
    return darkTheme.value ? Icons.dark_mode : Icons.light_mode;
  }

  set setLocale(Languages languages) {
    String languageCode;
    switch (languages) {
      case Languages.english:
        languageCode = 'en';
        break;
      case Languages.polish:
        languageCode = 'pl';
        break;
      default:
        languageCode = 'is';
        break;
    }
    Get.updateLocale(Locale(languageCode, ''));
  }

  SvgPicture get languageFlag {
    Locale? locale = Get.locale;
    if (locale == Locale('pl')) return SvgPicture.asset('icons/flags/svg/pl.svg', package: 'country_icons');
    else if (locale == Locale('en')) return SvgPicture.asset('icons/flags/svg/gb.svg', package: 'country_icons');
    else return SvgPicture.asset('icons/flags/svg/is.svg', package: 'country_icons');
  }


}
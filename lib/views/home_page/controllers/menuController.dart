import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/services/l10nService.dart';
import 'package:portfolio/services/themeService.dart';


class MenuController extends GetxController {
  RxBool darkTheme = ThemeService().loadFromStorage().obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeTheme() {
    darkTheme.value = !darkTheme.value;
    ThemeService().changeTheme();
  }

  String get themeString {
    return darkTheme.value ? S().darkMode : S().lightMode;
  }

  IconData get themeIcon {
    return darkTheme.value ? Icons.dark_mode : Icons.light_mode;
  }

  set changeLocale(Languages language) {
    L10nService().changeLocale(language);
  }

  SvgPicture get languageFlag {
    Locale locale = L10nService().locale;
    if (locale == Locale('pl')) return SvgPicture.asset('icons/flags/svg/pl.svg', package: 'country_icons');
    else if (locale == Locale('en')) return SvgPicture.asset('icons/flags/svg/gb.svg', package: 'country_icons');
    else return SvgPicture.asset('icons/flags/svg/is.svg', package: 'country_icons');
  }
}
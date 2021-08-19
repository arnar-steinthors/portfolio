import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/services/l10n_service.dart';
import 'package:portfolio/services/theme_service.dart';

// todo: this file should be moved to a shared_ folder

class MenuController extends GetxController {
  RxBool darkTheme = ThemeService().loadFromStorage().obs;

  void changeTheme() {
    darkTheme.value = !darkTheme.value;
    ThemeService().changeTheme();
  }

  String themeString(BuildContext context) {
    return darkTheme.value ? S.of(context).darkMode : S.of(context).lightMode;
  }

  IconData get themeIcon {
    return darkTheme.value ? Icons.dark_mode : Icons.light_mode;
  }

  set changeLocale(Languages language) {
    L10nService().changeLocale(language);
    Get.back();
  }

  SvgPicture get languageFlag {
    Locale locale = L10nService().locale;
    if (locale == Locale('pl')) {
      return SvgPicture.asset('icons/flags/svg/pl.svg', package: 'country_icons');
    } else if (locale == Locale('en')) {
      return SvgPicture.asset('icons/flags/svg/gb.svg', package: 'country_icons');
    } else {
      return SvgPicture.asset('icons/flags/svg/is.svg', package: 'country_icons');
    }
  }
}
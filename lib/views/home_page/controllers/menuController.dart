import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  RxBool darkTheme = false.obs;  // todo: initial value should be from local storage

  void changeTheme() {
    darkTheme.value = !darkTheme.value;
    ThemeData theme = darkTheme.value ? ThemeData.dark() : ThemeData.light();
    Get.changeTheme(theme);
  }

  String get themeString {
    return darkTheme.value ? "Dark mode" : "Light mode";
  }

  IconData get themeIcon {
    return darkTheme.value ? Icons.dark_mode : Icons.light_mode;
  }
}
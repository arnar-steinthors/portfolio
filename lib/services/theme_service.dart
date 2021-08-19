import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/services/base_service.dart';

class ThemeService extends BaseService {
  @override
  final String storageKey = 'darkTheme';

  @override
  dynamic defaultValue = false;

  @override  // change the return type from dynamic to bool
  bool loadFromStorage() => super.loadFromStorage();

  /// returns a dark or light theme based on the stored value
  ThemeMode get theme => loadFromStorage() ? ThemeMode.dark : ThemeMode.light;

  /// flip the current theme
  void changeTheme() {
    Get.changeThemeMode(loadFromStorage() ? ThemeMode.light : ThemeMode.dark);
    saveToStorage(!loadFromStorage());
  }
}
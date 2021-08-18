
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LOCALE = 'locale';

class Globals {
  // Globals is a singleton class
  static final Globals _singleton = Globals._internal();
  factory Globals() => _singleton;
  Globals._internal();
  static Globals get variables => _singleton;

  // shared preferences local storage
  Map<String, dynamic> _storage = Map();
  // shared preferences instance
  SharedPreferences? preferencesObj;

  Future setStorage() async {
    preferencesObj = await SharedPreferences.getInstance();
    for (String key in preferencesObj!.getKeys()) {
      _storage[key] = preferencesObj!.get(key);
    }
  }

  dynamic getStorage(String key) {
    return _storage[key];
  }

  Future<void> writeToStorage(String key, dynamic value) async {
    if (value.runtimeType == String) await preferencesObj!.setString(key, value);
    else if (value.runtimeType == int) await preferencesObj!.setInt(key, value);
    else if (value.runtimeType == double) await preferencesObj!.setDouble(key, value);
    else if (value.runtimeType == bool) await preferencesObj!.setBool(key, value);
    else await preferencesObj!.setStringList(key, value);
    _storage[key] = value;
  }

  Locale? get getLocale {
    // attempt to get a saved locale
    String? localeCode = this.getStorage('locale');
    if (localeCode != null) return Locale(localeCode, '');
    // return the device locale or null
    return Get.deviceLocale;
  }
}
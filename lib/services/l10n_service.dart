import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/services/base_service.dart';


enum Languages {
  icelandic,
  english,
  polish,
}

class L10nService extends BaseService {
  @override
  final String storageKey = 'locale';

  @override
  dynamic defaultValue = 'is';  // default language code

  @override
  String loadFromStorage() => super.loadFromStorage();

  /// get locale from memory
  Locale get locale => Locale(loadFromStorage(), '');

  void changeLocale(Languages languages) {
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
    saveToStorage(languageCode);
    Get.updateLocale(Locale(languageCode, ''));
  }
}
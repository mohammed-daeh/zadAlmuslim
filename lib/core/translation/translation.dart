
import 'dart:convert';

import 'package:flutter/services.dart';

class Utils {
  static Map<String, Map<String, String>> _translations = {};
  static String _currentLanguage = 'en'; 

  static Future<void> loadTranslations(String filePath) async {
    String jsonString = await rootBundle.loadString(filePath);
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _translations = jsonMap.map((key, value) {
      return MapEntry(key, Map<String, String>.from(value));
    });
  }

  static void changeLanguage(String languageCode) {
    if (_translations.containsKey(languageCode)) {
      _currentLanguage = languageCode;
    } else {
      // print("Language not found: $languageCode");
    }
  }

  static String localize(String key) {
    return _translations[_currentLanguage]?[key] ?? key;
  }
}

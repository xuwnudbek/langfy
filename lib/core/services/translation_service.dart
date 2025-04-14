import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TranslationService extends Translations {
  static Map<String, Map<String, String>> _translations = {};

  @override
  Map<String, Map<String, String>> get keys => _translations;

  static Future<void> init() async {
    _translations = {
      'uz_UZ': await _loadTranslation('assets/translations/uz_UZ.json'),
      'en_US': await _loadTranslation('assets/translations/en_US.json'),
      'ru_RU': await _loadTranslation('assets/translations/ru_RU.json'),
    };
  }

  static Future<Map<String, String>> _loadTranslation(String path) async {
    try {
      final jsonString = await rootBundle.loadString(path);

      if (jsonString.isEmpty) {
        throw Exception('Tarjima fayli bo\'sh');
      }
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      return jsonMap.map((key, value) => MapEntry(key, value.toString()));
    } catch (e) {
      print('Tarjima faylini yuklashda xatolik: $e');
      return {};
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToggleLanguageButton extends StatefulWidget {
  const ToggleLanguageButton({super.key});

  @override
  State<ToggleLanguageButton> createState() => _ToggleLanguageButtonState();
}

class _ToggleLanguageButtonState extends State<ToggleLanguageButton> {
  final List<Map<String, dynamic>> _languages = [
    {
      'name': 'UZ',
      'locale': const Locale('uz', 'UZ'),
      'flag': '🇺🇿',
    },
    {
      'name': 'EN',
      'locale': const Locale('en', 'US'),
      'flag': '🇬🇧',
    },
    {
      'name': 'RU',
      'locale': const Locale('ru', 'RU'),
      'flag': '🇷🇺',
    },
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadSelectedLanguage();
  }

  Future<void> _loadSelectedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('languageCode') ?? 'uz';
    final index = _languages.indexWhere((lang) => lang['locale'].languageCode == languageCode);
    if (index != -1) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  Future<void> _saveSelectedLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);
  }

  void _toggleLanguage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _languages.length;
    });

    final newLocale = _languages[_currentIndex]['locale'] as Locale;
    Get.updateLocale(newLocale);
    _saveSelectedLanguage(newLocale.languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(50),
      ),
      child: InkWell(
        onTap: _toggleLanguage,
        borderRadius: BorderRadius.circular(50),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _languages[_currentIndex]['flag'],
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              _languages[_currentIndex]['name'],
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.unfold_more,
              color: Theme.of(context).colorScheme.primary,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}

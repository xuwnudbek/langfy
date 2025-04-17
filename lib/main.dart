import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:langfy/core/services/translation_service.dart';
import 'package:langfy/ui/pages/main/main_page.dart';
import 'package:langfy/ui/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await TranslationService.init();
    await SharedPreferences.getInstance();

    runApp(const MyApp());
  }, (error, stack) {
    log('Error: $error');
    log('Stack trace: $stack');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LangFy',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      translations: TranslationService(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const MainPage(), //const FinishRegisterPage(), //const SplashPage(),
    );
  }
}

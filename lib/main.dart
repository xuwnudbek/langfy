import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:langfy/ui/pages/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'LangFy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Color(0xff6200ee),
          secondary: Color(0xff03dac6),
        ),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

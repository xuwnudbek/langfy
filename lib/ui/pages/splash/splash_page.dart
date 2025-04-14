import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';
import 'package:langfy/ui/pages/welcome/welcome_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    initialize();
  }

  Future<void> initialize() async {
    // Simulate a delay for splash screen
    await Future.delayed(const Duration(seconds: 1));
    // Navigate to the main page after the delay
    Get.offAll(() => const WelcomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/langfy.svg',
                width: Get.width * 0.6,
                // height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/pages/auth/register/register_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            SizedBox(
              width: Get.width,
              height: Get.width,
              child: SvgPicture.asset(
                'assets/icons/man_woman.svg',
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text.rich(
                TextSpan(
                  text: 'welcome.title'.tr,
                  style: const TextStyle(
                    fontSize: 42,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'welcome.subtitle'.tr,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the login page
            Get.to(() => const RegisterPage());
          },
          child: Text(
            'welcome.start'.tr,
          ),
        ),
      ),
    );
  }
}

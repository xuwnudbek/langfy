import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/pages/main/main_page.dart';
import 'package:langfy/ui/widgets/back_button2.dart';
import 'package:langfy/ui/widgets/password_input.dart';

class SecureYourAccountPage extends StatefulWidget {
  const SecureYourAccountPage({super.key});

  @override
  State<SecureYourAccountPage> createState() => _SecureYourAccountPageState();
}

class _SecureYourAccountPageState extends State<SecureYourAccountPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: Get.width,
        leading: const BackButton2(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(
              "auth.secure.secure_your_account".tr,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "auth.secure.create_strong_password".tr,
              style: textTheme.bodyLarge?.copyWith(
                color: theme.hintColor,
              ),
            ),
            const SizedBox(height: 24),
            // Code input fields, length 6
            PasswordInput(
              controller: _passwordController,
              labelText: 'auth.secure.password'.tr,
              hintText: 'auth.secure.password_hint'.tr,
            ),
            const SizedBox(height: 16),
            PasswordInput(
              isConfirmPassword: true,
              controller: _confirmPasswordController,
              labelText: 'auth.secure.confirm_password'.tr,
              hintText: 'auth.secure.confirm_password_hint'.tr,
            ),

            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => const MainPage());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "auth.secure.set_password".tr,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

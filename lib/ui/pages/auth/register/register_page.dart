import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/pages/auth/register/confirm_phone_page.dart';
import 'package:langfy/ui/widgets/phone_input_field.dart';
import 'package:langfy/ui/widgets/toggle_language_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/langfy.svg",
                    width: Get.width * 0.33,
                  ),
                  const Spacer(),
                  const ToggleLanguageButton(),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                "auth.register".tr,
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "auth.enter_phone".tr,
                style: textTheme.bodyLarge?.copyWith(
                  color: theme.hintColor,
                ),
              ),
              const SizedBox(height: 24),
              PhoneInputField(
                onChanged: (String value) {},
              ),
              // Continuebutton
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => const ConfirmPhonePage(),
                    transition: Transition.rightToLeft,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("auth.continue".tr),
                  ],
                ),
              ),
              // or line
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: Divider()),
                  const SizedBox(width: 8),
                  Text(
                    "auth.or".tr,
                    style: textTheme.bodyLarge,
                  ),
                  const SizedBox(width: 8),
                  const Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 32),

              // Continue with Google
              ElevatedButton(
                onPressed: () {},
                style: theme.elevatedButtonTheme.style?.copyWith(
                  elevation: const WidgetStatePropertyAll(0),
                  backgroundColor: WidgetStateProperty.all(
                    theme.colorScheme.surface,
                  ),
                  foregroundColor: WidgetStateProperty.all(
                    theme.colorScheme.primary,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/google.svg"),
                    const SizedBox(width: 8),
                    Text("auth.continue_with_google".tr),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: theme.elevatedButtonTheme.style?.copyWith(
                        elevation: const WidgetStatePropertyAll(0),
                        backgroundColor: WidgetStateProperty.all(
                          theme.colorScheme.surface,
                        ),
                        foregroundColor: WidgetStateProperty.all(
                          theme.colorScheme.primary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.mail),
                          const SizedBox(width: 8),
                          Text("auth.email".tr),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: theme.elevatedButtonTheme.style?.copyWith(
                        elevation: const WidgetStatePropertyAll(0),
                        backgroundColor: WidgetStateProperty.all(
                          theme.colorScheme.surface,
                        ),
                        foregroundColor: WidgetStateProperty.all(
                          theme.colorScheme.primary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.facebook_rounded),
                          const SizedBox(width: 8),
                          Text("auth.facebook".tr),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

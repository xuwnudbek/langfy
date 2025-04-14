import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/pages/auth/register/secure_your_account.dart';
import 'package:langfy/ui/widgets/back_button2.dart';

class ConfirmPhonePage extends StatefulWidget {
  const ConfirmPhonePage({super.key});

  @override
  State<ConfirmPhonePage> createState() => _ConfirmPhonePageState();
}

class _ConfirmPhonePageState extends State<ConfirmPhonePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: Get.width,
        leading: BackButton2(
          text: "auth.confirm.edit_phone".tr,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(
              "auth.confirm.confirm_phone".tr,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                text: "auth.confirm.we_have_sent_code".tr,
                style: textTheme.bodyLarge?.copyWith(
                  color: theme.hintColor,
                ),
                children: [
                  TextSpan(
                    text: " +998(90)-123-4567",
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Code input fields, length 6
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return SizedBox.square(
                  dimension: Get.width * 1 / 7.5,
                  child: TextField(
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: theme.colorScheme.primary,
                          width: 2,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                );
              }),
            ),

            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const SecureYourAccountPage());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "auth.confirm.confirm".tr,
                  ),
                ],
              ),
            ),
            const Spacer(),
            // Resend code
            if (3 < 2)
              ElevatedButton(
                onPressed: () {
                  // Handle resend code
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "auth.confirm.resend_code".tr,
                      style: textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              )
            else
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "${"auth.confirm.remaining_time".tr} ",
                    style: textTheme.bodyMedium?.copyWith(
                      color: theme.hintColor,
                    ),
                    children: [
                      TextSpan(
                        text: "01:59",
                        style: textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/pages/main/screens/profile/pages/support/pages/customer_service.dart';
import 'package:langfy/ui/widgets/outline_button2.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      spacing: 16,
      children: [
        const SizedBox(height: 0),
        OutlineButton2(
          onPressed: () {
            Get.to(
              () => const CustomerService(),
              transition: Transition.rightToLeft,
            );
          },
          height: 72,
          child: Row(
            children: [
              const SizedBox(width: 8),
              SvgPicture.asset(
                "assets/icons/support.svg",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16),
              Text(
                "Customer Service",
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        OutlineButton2(
          onPressed: () {},
          height: 72,
          child: Row(
            children: [
              const SizedBox(width: 8),
              SvgPicture.asset(
                "assets/icons/whatsapp.svg",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16),
              Text(
                "WhatsApp",
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        OutlineButton2(
          onPressed: () {},
          height: 72,
          child: Row(
            children: [
              const SizedBox(width: 8),
              SvgPicture.asset(
                "assets/icons/website.svg",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16),
              Text(
                "Website",
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        OutlineButton2(
          onPressed: () {},
          height: 72,
          child: Row(
            children: [
              const SizedBox(width: 8),
              SvgPicture.asset(
                "assets/icons/facebook.svg",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16),
              Text(
                "Facebook",
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        OutlineButton2(
          onPressed: () {},
          height: 72,
          child: Row(
            children: [
              const SizedBox(width: 8),
              SvgPicture.asset(
                "assets/icons/twitter.svg",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16),
              Text(
                "Twitter",
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        OutlineButton2(
          onPressed: () {},
          height: 72,
          child: Row(
            children: [
              const SizedBox(width: 8),
              SvgPicture.asset(
                "assets/icons/instagram.svg",
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 16),
              Text(
                "Instagram",
                style: textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

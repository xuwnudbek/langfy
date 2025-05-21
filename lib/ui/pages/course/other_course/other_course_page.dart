import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/widgets/back_button2.dart';
import 'package:langfy/ui/widgets/outline_button2.dart';

class OtherCoursePage extends StatefulWidget {
  const OtherCoursePage({super.key});

  @override
  State<OtherCoursePage> createState() => _OtherCoursePageState();
}

class _OtherCoursePageState extends State<OtherCoursePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: BackButton2(),
        ),
        leadingWidth: 80,
        title: Text(
          "English",
          style: textTheme.titleLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
        // actions: [
        //   IconButton(
        //     icon: Icon(
        //       Icons.check,
        //       color: colorScheme.primary,
        //     ),
        //     onPressed: () {},
        //   ),
        //   const SizedBox(width: 8),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SizedBox(
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/english.webp",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 26),
            Text(
              "English",
              style: textTheme.titleLarge?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Learning English provides numerous benefits, including better career opportunities, cultural understanding, easier travel, cognitive advantages, and access to rich historical and literary knowledge.",
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: theme.colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Learning English is easy and fast with us. You can speak in 6 months.",
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: theme.colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // height: 100,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: colorScheme.outlineVariant,
            ),
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            Row(
              spacing: 8,
              children: [
                Text(
                  "500 000 so'm",
                  style: textTheme.titleLarge?.copyWith(
                    color: colorScheme.primary,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color(0xFFFFF1C2),
                  ),
                  child: Text(
                    "1 200 000 so'm",
                    style: textTheme.bodyLarge?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  _buildPaymentBottomSheet(),
                );
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Apply discount now!",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //_buildPaymentBottomSheet()
  Widget _buildPaymentBottomSheet() {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 16,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(CupertinoIcons.clear),
              ),
              Text(
                "Choose payment method",
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          OutlineButton2(
            height: 96,
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/payment/apple.png",
                  width: 75,
                ),
                const SizedBox(width: 8),
                Text(
                  "Apple Pay",
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                const Icon(
                  CupertinoIcons.forward,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          OutlineButton2(
            height: 96,
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/payment/gpay.png",
                  width: 75,
                ),
                const SizedBox(width: 8),
                Text(
                  "Google Pay",
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                const Icon(
                  CupertinoIcons.forward,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          OutlineButton2(
            height: 96,
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/payment/mastercard.png",
                  width: 75,
                ),
                const SizedBox(width: 8),
                Text(
                  "Visa, Mastercard",
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                const Icon(
                  CupertinoIcons.forward,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

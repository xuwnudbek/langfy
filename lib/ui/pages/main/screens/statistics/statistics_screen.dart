import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:langfy/ui/theme/app_colors.dart';
import 'package:langfy/ui/widgets/custom_dropdown2.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart' as dpt;

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomDropdown2(
              items: [
                {
                  "value": "uz",
                  "item": "O'zbek tili",
                },
                {
                  "value": "en",
                  "item": "Engliz tili",
                },
                {
                  "value": "ru",
                  "item": "Rus tili",
                },
                {
                  "value": "tr",
                  "item": "Turk tili",
                },
                {
                  "value": "de",
                  "item": "Nemis tili",
                },
                {
                  "value": "fr",
                  "item": "Fransuz tili",
                },
                {
                  "value": "es",
                  "item": "Ispan tili",
                },
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today",
                  style: textTheme.titleLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Icon(CupertinoIcons.calendar_today),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: dpt.DatePicker(
                    DateTime.now(),
                    // locale: "uz",
                    initialSelectedDate: DateTime.now(),
                    selectionColor: theme.primaryColor,
                    selectedTextColor: Colors.white,
                    deactivatedColor: theme.colorScheme.error,
                    onDateChange: (date) {},
                    height: 100,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Text(
                  "Your Statistics 📊",
                  style: textTheme.titleLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      border: Border.all(color: AppColors.divider),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 8),
                            Icon(
                              CupertinoIcons.time,
                              color: theme.primaryColor,
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "15,274",
                              style: textTheme.titleLarge?.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Spend hours",
                              style: textTheme.titleLarge?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      border: Border.all(color: AppColors.divider),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 8),
                            Icon(
                              CupertinoIcons.book,
                              color: theme.primaryColor,
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "458",
                              style: textTheme.titleLarge?.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Lessons Passed",
                              style: textTheme.titleLarge?.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            SvgPicture.asset(
              "assets/icons/statistics_chart.svg",
            ),
          ],
        ),
      ),
    );
  }
}

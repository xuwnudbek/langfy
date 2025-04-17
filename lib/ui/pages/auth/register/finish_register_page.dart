import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/widgets/custom_dropdown2.dart';
import 'package:langfy/ui/widgets/custom_input.dart';
import 'package:langfy/ui/widgets/outline_button2.dart';

class FinishRegisterPage extends StatefulWidget {
  const FinishRegisterPage({super.key});

  @override
  State<FinishRegisterPage> createState() => _FinishRegisterPageState();
}

class _FinishRegisterPageState extends State<FinishRegisterPage> {
  // full name, date of birth, gender, language
  final TextEditingController _fullNameController = TextEditingController();
  DateTime? _dateOfBirth;
  set dateOfBirth(DateTime? value) {
    setState(() {
      _dateOfBirth = value;
    });
  }

  String? _gender;
  set gender(String value) {
    setState(() {
      _gender = value;
    });
  }

  String _language = "";
  set language(String value) {
    setState(() {
      _language = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
          // leadingWidth: Get.width,
          // leading: const BackButton2(),
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(
              "auth.finish.almost".tr,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "auth.finish.details".tr,
              style: textTheme.bodyLarge?.copyWith(
                color: theme.hintColor,
              ),
            ),
            const SizedBox(height: 24),
            CustomInput(
              controller: _fullNameController,
              labelText: 'auth.finish.full_name'.tr,
              hintText: 'auth.finish.full_name_hint'.tr,
            ),
            const SizedBox(height: 16),
            OutlineButton2(
              onPressed: () async {
                var res = Get.bottomSheet(
                  SizedBox(
                    height: 300,
                    child: BottomPicker.date(
                      pickerTitle: Text(
                        "auth.finish.date_of_birth".tr,
                      ),
                      maxDateTime: DateTime.now(),
                      displaySubmitButton: false,
                      onChange: (value) {
                        dateOfBirth = value;
                      },
                    ),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_dateOfBirth != null)
                    Text(
                      "${_dateOfBirth?.day}/${_dateOfBirth?.month}/${_dateOfBirth?.year}",
                    )
                  else
                    Text(
                      "auth.finish.date_of_birth".tr,
                    ),
                  const Icon(
                    CupertinoIcons.calendar,
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            CustomDropdown2(
              hint: "Gender",
              items: [
                {
                  "value": "male",
                  "item": "Male",
                },
                {
                  "value": "female",
                  "item": "Female",
                },
                {
                  "value": "other",
                  "item": "Other",
                }
              ],
              onChanged: (value) {
                gender = value;
              },
              value: _gender,
            ),
            const SizedBox(height: 24),
            CustomDropdown2(
              hint: "auth.finish.your_language".tr,
              items: [
                {
                  "value": "uz",
                  "item": "🇺🇿 Uzbek",
                },
                {
                  "value": "ru",
                  "item": "🇷🇺 Russian",
                },
                {
                  "value": "en",
                  "item": "🏴󠁧󠁢󠁥󠁮󠁧󠁿 English",
                },
                {
                  "value": "es",
                  "item": "🇪🇸 Spanish",
                }
              ],
              onChanged: (value) {
                gender = value;
              },
              value: _gender,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "auth.finish.finish&create".tr,
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

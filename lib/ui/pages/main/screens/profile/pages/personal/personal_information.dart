import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/widgets/back_button2.dart';
import 'package:langfy/ui/widgets/custom_dropdown2.dart';
import 'package:langfy/ui/widgets/custom_input.dart';
import 'package:langfy/ui/widgets/outline_button2.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  final TextEditingController _fullNameController = TextEditingController();
  DateTime? _dateOfBirth;
  set dateOfBirth(DateTime? value) {
    setState(() {
      _dateOfBirth = value;
    });
  }

  String _gender = "";
  set gender(val) {
    setState(() {
      _gender = val;
    });
  }

  String _language = "";
  set language(val) {
    setState(() {
      _language = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButton2(),
                  const Text("Personal information"),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: SvgPicture.asset("assets/icons/edit.svg"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
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
              const SizedBox(height: 16),
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
              // const Spacer(),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         "Save",
              //         style: TextStyle(
              //           color: Theme.of(context).colorScheme.onPrimary,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

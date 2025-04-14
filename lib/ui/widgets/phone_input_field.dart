import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PhoneInputField extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? initialValue;
  final String? errorText;

  const PhoneInputField({
    super.key,
    this.onChanged,
    this.initialValue,
    this.errorText,
  });

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  late TextEditingController _controller;
  bool _isFocused = false;

  final Map<String, dynamic> _selectedCountry = {};
  final List<Map<String, dynamic>> _countries = [
    {
      "name": "Uzbekistan",
      "code": "uz",
      "flag": "🇺🇿",
    },
    {
      "name": "Russia",
      "code": "ru",
      "flag": "🇷🇺",
    },
    {
      "name": "Tajikistan",
      "code": "tj",
      "flag": "🇹🇯",
    },
    {
      "name": "Kazakhstan",
      "code": "kz",
      "flag": "🇰🇿",
    },
    {
      "name": "Türkiye",
      "code": "tr",
      "flag": "🇹🇷",
    },
  ];

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  void _showCountryPicker() {
    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return Dialog(
              child: SizedBox(
                width: Get.width * 0.8,
                height: Get.height * 0.8,
                child: Column(
                  children: [
                    Text("auth.select_country".tr),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("auth.country".tr),
                          leading: const Text("🇺🇿"),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: _isFocused ? theme.colorScheme.primary : theme.colorScheme.outlineVariant,
              width: 1,
            ),
          ),
          alignment: Alignment.center,
          child: Focus(
            onFocusChange: (focused) {
              setState(() => _isFocused = focused);
            },
            child: TextFormField(
              controller: _controller,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(9),
              ],
              onChanged: (value) {
                if (widget.onChanged != null) {
                  widget.onChanged!(value);
                }
              },
              decoration: InputDecoration(
                prefixIcon: GestureDetector(
                  onTap: () {
                    _showCountryPicker();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          '🇺🇿',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          '+998',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 24,
                          width: 1,
                          color: theme.colorScheme.outlineVariant,
                        ),
                      ],
                    ),
                  ),
                ),
                hintText: '90 123 45 67',
                hintStyle: Get.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.outlineVariant,
                ),
                errorText: widget.errorText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  // vertical: 10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

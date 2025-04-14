import 'package:dropdown_button2/dropdown_button2.dart';

import 'package:flutter/material.dart';
import 'package:langfy/ui/theme/app_colors.dart';

class CustomDropdown2 extends StatefulWidget {
  const CustomDropdown2({
    super.key,
    required this.items,
    required this.onChanged,
    this.hint = "Select",
    this.value,
  });

  final List items;
  final Function(dynamic value) onChanged;
  final String hint;

  final String? value;

  @override
  State<CustomDropdown2> createState() => _CustomDropdown2State();
}

class _CustomDropdown2State extends State<CustomDropdown2> {
  String? _value;
  String? get value => _value;
  set value(val) {
    _value = val;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        buttonStyleData: ButtonStyleData(
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.divider,
              width: 1,
            ),
          ),
        ),
        iconStyleData: const IconStyleData(
          openMenuIcon: Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.keyboard_arrow_up_rounded,
            ),
          ),
          icon: Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
            ),
          ),
        ),
        isExpanded: true,
        hint: Text(
          widget.hint,
          style: textTheme.bodyLarge?.copyWith(
            color: theme.hintColor,
          ),
        ),
        style: textTheme.bodyLarge,
        items: widget.items
            .map(
              (item) => DropdownMenuItem<String>(
                value: "${item['value']}",
                child: Text(
                  "${item['item']}",
                  style: textTheme.bodyLarge?.copyWith(
                    color: theme.hintColor,
                  ),
                ),
              ),
            )
            .toList(),
        value: value,
        onChanged: (val) {
          value = val;
          widget.onChanged.call(val);
        },
      ),
    );
  }
}

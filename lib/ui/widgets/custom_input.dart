import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/theme/app_colors.dart';

class CustomInput extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;

  const CustomInput({
    super.key,
    this.labelText = '',
    this.hintText = '',
    required this.controller,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.autofocus = false,
    this.decoration,
    this.validator,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _hasFocus = false;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    _focusNode.removeListener(_handleFocusChange);
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return SizedBox(
      height: 48,
      child: TextFormField(
        controller: widget.controller,
        focusNode: _focusNode,
        onChanged: (value) {
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
        onFieldSubmitted: widget.onSubmitted,
        textInputAction: widget.textInputAction,
        autofocus: widget.autofocus,
        validator: widget.validator,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          hintStyle: textTheme.bodyMedium?.copyWith(
            color: theme.hintColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: _hasFocus ? Get.theme.primaryColor : AppColors.divider,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: _hasFocus ? Get.theme.primaryColor : AppColors.divider,
            ),
          ),
          filled: true,
          fillColor: _hasFocus ? Colors.white : const Color(0xffF9F9F9),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
        ),
      ),
    );
  }
}

enum PasswordStrength {
  empty,
  weak,
  medium,
  strong,
}

class PasswordStrengthIndicator extends StatelessWidget {
  final PasswordStrength strength;

  const PasswordStrengthIndicator({
    super.key,
    required this.strength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 4,
                decoration: BoxDecoration(
                  color: _getColorForSegment(0),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(2),
                    bottomLeft: Radius.circular(2),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 2),
            Expanded(
              flex: 1,
              child: Container(
                height: 4,
                color: _getColorForSegment(1),
              ),
            ),
            const SizedBox(width: 2),
            Expanded(
              flex: 1,
              child: Container(
                height: 4,
                decoration: BoxDecoration(
                  color: _getColorForSegment(2),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(2),
                    bottomRight: Radius.circular(2),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          _getStrengthText(),
          style: TextStyle(
            fontSize: 12,
            color: _getStrengthColor(),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Color _getColorForSegment(int segment) {
    switch (strength) {
      case PasswordStrength.weak:
        return segment == 0 ? Colors.red : Colors.grey.shade300;
      case PasswordStrength.medium:
        return segment <= 1 ? Colors.orange : Colors.grey.shade300;
      case PasswordStrength.strong:
        return Colors.green;
      default:
        return Colors.grey.shade300;
    }
  }

  Color _getStrengthColor() {
    switch (strength) {
      case PasswordStrength.weak:
        return Colors.red;
      case PasswordStrength.medium:
        return Colors.orange;
      case PasswordStrength.strong:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  String _getStrengthText() {
    switch (strength) {
      case PasswordStrength.weak:
        return 'auth.secure.weak_password'.tr;
      case PasswordStrength.medium:
        return 'auth.secure.medium_password'.tr;
      case PasswordStrength.strong:
        return 'auth.secure.strong_password'.tr;
      default:
        return '';
    }
  }
}

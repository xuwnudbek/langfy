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
  final Widget? prefix; // Added prefix widget

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
    this.prefix, // Added prefix widget
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
          prefix: widget.prefix, // Added prefix widget here
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
          fillColor: _hasFocus ? Colors.white : AppColors.innerGrey,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInput2 extends StatefulWidget {
  const CustomInput2({
    super.key,
    this.controller,
  });

  final TextEditingController? controller;

  @override
  State<CustomInput2> createState() => _CustomInput2State();
}

class _CustomInput2State extends State<CustomInput2> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return TextField(
      controller: widget.controller,
      style: textTheme.bodyLarge?.copyWith(
        color: colorScheme.onPrimary,
      ),
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: TextStyle(
          color: Colors.grey[400],
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(
            CupertinoIcons.search,
            size: 20,
          ),
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            CupertinoIcons.xmark,
            size: 20,
          ),
        ),
        prefixIconColor: colorScheme.primary,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}

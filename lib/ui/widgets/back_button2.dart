import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButton2 extends StatefulWidget {
  const BackButton2({
    super.key,
    this.text,
    this.onTap,
  });

  final String? text;
  final Function? onTap;

  @override
  State<BackButton2> createState() => _BackButton2State();
}

class _BackButton2State extends State<BackButton2> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios_rounded,
            color: theme.colorScheme.primary,
            size: 18,
          ),
          const SizedBox(width: 4),
          Text(
            widget.text ?? "common.back".tr,
            style: TextStyle(
              fontSize: 16,
              color: theme.colorScheme.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

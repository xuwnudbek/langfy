import 'package:flutter/material.dart';

class OutlineButton2 extends StatefulWidget {
  const OutlineButton2({
    super.key,
    required this.child,
    this.onPressed,
  });

  final Widget child;
  final VoidCallback? onPressed;

  @override
  State<OutlineButton2> createState() => _OutlineButton2State();
}

class _OutlineButton2State extends State<OutlineButton2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onPressed != null) {
          widget.onPressed!();
        }
      },
      child: Card.outlined(
        margin: EdgeInsets.zero,
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

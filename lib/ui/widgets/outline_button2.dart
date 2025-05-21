import 'package:flutter/material.dart';

class OutlineButton2 extends StatefulWidget {
  const OutlineButton2({
    super.key,
    required this.child,
    this.onPressed,
    this.height = 48,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final double height;

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
          height: widget.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

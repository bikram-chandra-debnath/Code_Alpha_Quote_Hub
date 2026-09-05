
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgrondColor = Colors.pinkAccent,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
  });

  final VoidCallback onPressed;
  final Widget child;
  final Color backgrondColor;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: backgrondColor,
        ),
        child: child,
      ),
    );
  }
}

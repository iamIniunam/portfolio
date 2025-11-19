import 'package:flutter/material.dart';

class PortfolioButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final EdgeInsetsGeometry padding;

  const PortfolioButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.borderRadius = 12.0,
    this.backgroundColor = Colors.grey,
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 6,
        shadowColor: Colors.black54,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

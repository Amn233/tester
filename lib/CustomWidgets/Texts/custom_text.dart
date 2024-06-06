import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomText({
    super.key,
    required this.title,
    required this.textColor,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: fontWeight,
      ),
    );
  }
}


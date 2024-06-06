import 'package:flutter/material.dart';

// Custom Text widget with parameters for title, color, size, and weight
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
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}


class CustomRichText extends StatelessWidget {
  final List<TextSpan> textSpans;

  const CustomRichText({
    super.key,
    required this.textSpans,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: textSpans,
      ),
    );
  }
}


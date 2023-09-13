import 'package:flutter/material.dart';

class FontStyleText extends StatelessWidget {
  const FontStyleText({
    super.key,
    required this.text,
    required this.textSize,
    this.textWeight,
    this.textColor,
  });
  final String? text;
  final double? textSize;
  final FontWeight? textWeight;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: textWeight,
        color: textColor,
      ),
    );
  }
}

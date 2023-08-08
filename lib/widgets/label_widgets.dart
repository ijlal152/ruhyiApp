import 'package:flutter/material.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_theme.dart';

class LabelWidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  final TextAlign textAlign;
  final String fontFamily;
  final double textHeight;

  const LabelWidget({
    super.key,
    this.text = '',
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.greyColor,
    this.fontSize = 12,
    this.fontFamily = regular,
    this.textAlign = TextAlign.center,
    this.textHeight = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        height: textHeight,
        fontSize: fontSize,
      ),
    );
  }
}

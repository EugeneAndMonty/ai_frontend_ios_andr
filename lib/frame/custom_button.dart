import 'package:ai_frontend/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  final double height;
  final double width;
  final double fontSize;
  CustomButton(
      {super.key,
      required this.onPressed,
      required this.label,
      this.height = double.infinity,
      this.width = double.infinity,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 1,
          side: BorderSide(color: whiteColorRegular),
          backgroundColor: redColor,
          fixedSize: Size(width, height),
          splashFactory: NoSplash.splashFactory),
      onPressed: onPressed,
      child: Text(
        label,
        style: customFontStyle(fontSize, FontWeight.w600, whiteColorRegular),
      ),
    );
  }
}

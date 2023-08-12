import 'package:ai_frontend/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String lable;
  final double height;
  final double width;
  final double fontSize;

  CustomButton(
      {super.key,
      required this.onPressed,
      required this.lable,
      this.height = double.infinity,
      this.width = double.infinity,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 1,
          side: BorderSide(color: whiteColor),
          backgroundColor: redColor,
          fixedSize: Size(width, height),
          splashFactory: NoSplash.splashFactory),
      onPressed: onPressed,
      child: Text(lable, style: fontStyleOswaldWhite(fontSize)),
    );
  }
}

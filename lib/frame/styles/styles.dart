import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color redColor = Colors.red.shade400;
const Color whiteColor = Colors.white70;

TextStyle customFontStyle(double fontSize,
    {FontWeight fontWeight = FontWeight.w600, Color color = whiteColor}) {
  return GoogleFonts.alata(
      textStyle:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color));
}

//Main Screen
const double fontSizeMainScreenButton = 30;
const double heightMainScreenButton = 70;
const double widthMainScreenButton = 200;

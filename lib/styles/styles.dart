import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color redColor = Colors.red.shade400;
const Color whiteColorGhost = Colors.white30;
const Color whiteColorRegular = Colors.white70;
const Color grayColor = Color.fromARGB(200, 61, 59, 59);

const double midSizeFont = 20;
const double largeSizeFont = 25;


TextStyle customFontStyle(double fontSize, FontWeight fontWeight, Color color) {
  return GoogleFonts.roboto(
      textStyle:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color));
}

//Main Screen
//Button
const double heightMainScreenButton = 60;
const double widthMainScreenButton = 200;

//Background
const List<double> mainScreenGradientRange = [0.1, 0.4, 0.6, 0.9];
const List<Color> mainScreenGradientColors = [
  Color.fromARGB(184, 250, 230, 52),
  Color.fromARGB(147, 244, 67, 54),
  Color.fromARGB(164, 58, 59, 66),
  Color.fromARGB(179, 57, 68, 67),
];

//Scroll bar
final Border borderForChooseStyleIcons = Border.all(
    width: 2,
    color: whiteColorRegular,
    strokeAlign: BorderSide.strokeAlignOutside);

const double marginBetweenChooseStyleIcons = 2;
const double paddingForTitleChooseStyleIcons = 15;


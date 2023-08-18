import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Widget child;
  final List<Color> gradientColors;
  final List<double> gradientRange;

  const Body(
      {super.key,
      required this.child,
      required this.gradientRange,
      required this.gradientColors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        stops: gradientRange,
        colors: gradientColors,
      )),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

class ChooseNumberText extends StatelessWidget {
  final double props;
  const ChooseNumberText({super.key, required this.props});

  @override
  Widget build(BuildContext context) {
    return Text(
        'Number of pictures: ' + props.round().toInt().toString(),
        style: TextStyle(
            letterSpacing: 0.3,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white),
      );
  }
}
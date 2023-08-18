import 'package:flutter/material.dart';

class ChooseStyle extends StatelessWidget {
  const ChooseStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Choose style:',
      style: TextStyle(
          letterSpacing: 0.3,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.white),
    );
  }
}

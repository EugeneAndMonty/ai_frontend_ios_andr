import 'package:flutter/material.dart';

class ChooseSize extends StatelessWidget {
  const ChooseSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Choose size:',
      style: TextStyle(
          letterSpacing: 0.3,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Colors.white),
    );
  }
}

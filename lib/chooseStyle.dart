import 'package:flutter/material.dart';

class ChooseStyle extends StatelessWidget {
  const ChooseStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Text(
          'Choose style:',
          style: TextStyle(
              letterSpacing: 0.3,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ));
  }
}

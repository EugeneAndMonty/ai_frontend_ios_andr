// ignore_for_file: must_be_immutable
import 'package:ai_frontend/main_screen/choose_number_text.dart';
import 'package:flutter/material.dart';

class ChooseNumber extends StatefulWidget {
  late double props; //refactor
  ChooseNumber({super.key, required this.props});

  @override
  State<ChooseNumber> createState() => _chooseNumberState();
}

class _chooseNumberState extends State<ChooseNumber> {
  chooseNumberOfPictures(value) => setState(() {
        widget.props = value;
      });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Slider(
        thumbColor: Colors.white,
        activeColor: Colors.white,
        inactiveColor: Color.fromARGB(12, 255, 255, 255),
        min: 1,
        max: 6,
        value: widget.props,
        onChanged: (value) {
          chooseNumberOfPictures(value);
        },
      ),      ChooseNumberText(props: widget.props),

    ]);
  }
}

import 'package:flutter/material.dart';

class ChooseNumber extends StatefulWidget {
  const ChooseNumber({super.key});

  @override
  State<ChooseNumber> createState() => _chooseNumberState();
}

double numberOfPictures = 1.0;

class _chooseNumberState extends State<ChooseNumber> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        width: double.infinity,
        child: Text(          
          'Number of pictures: ' + numberOfPictures.round().toInt().toString(), textAlign: TextAlign.left,
          style: TextStyle(
                letterSpacing: 0.3,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white),
        ),
      ),
      Slider(
        thumbColor: Colors.white,
        activeColor: Colors.white,
        inactiveColor: Color.fromARGB(85, 255, 255, 255),
        min: 1,
        max: 4,
        divisions: 3,
        value: numberOfPictures,
        onChanged: (value) {
          setState(() {
            numberOfPictures = value;
          });
        },
      ),
    ]);
  }
}

import 'package:flutter/material.dart';

class textInput extends StatelessWidget {
  const textInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
            keyboardAppearance: Brightness.dark,
            style: TextStyle(fontSize: 22, color: Colors.white),
            maxLines: 5,
            maxLength: 250,
            decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(39, 69, 70, 71),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2.0, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2.0, color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                hintText: 'What would you like to see?',
                hintStyle: TextStyle(fontSize: 22, color: Colors.white))));
  }
}

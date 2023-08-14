import 'package:flutter/material.dart';

class textInput extends StatefulWidget {
  const textInput({super.key});

  @override
  State<textInput> createState() => _textInputState();
}

String? data_from_text;

class _textInputState extends State<textInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(4),
        child: TextField(
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
              new TextEditingController().clear();
            },
            onChanged: (value) {
              if (value.length == 0) {
                data_from_text = null;
              } else {
                data_from_text = value;
              }
            },
            keyboardAppearance: Brightness.dark,
            style: TextStyle(fontSize: 22, color: Colors.white),
            maxLines: 5,
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
                hintText:
                    'What would you like to see?\nDescribe what you want in details.',
                hintStyle: TextStyle(fontSize: 18, color: Colors.white))));
  }
}

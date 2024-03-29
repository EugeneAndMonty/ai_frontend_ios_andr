import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
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
              print(value);
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

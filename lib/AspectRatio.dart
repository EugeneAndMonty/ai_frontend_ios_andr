import 'package:flutter/material.dart';

class AspectRation extends StatefulWidget {
  const AspectRation({super.key});

  @override
  State<AspectRation> createState() => _AspectRationState();
}

class _AspectRationState extends State<AspectRation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            width: 66.75,
            height: 66.75,
            color: Color.fromARGB(132, 49, 55, 58),
            child: Align(
                child: Text('1:1',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18))),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            width: 50.0,
            height: 66.75,
            color: Color.fromARGB(132, 49, 55, 58),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 7),
            width: 66.75,
            height: 50,
            color: Color.fromARGB(132, 49, 55, 58),
          ),
        ],
      ),
    );
  }
}

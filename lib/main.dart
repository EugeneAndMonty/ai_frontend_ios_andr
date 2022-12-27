import 'package:flutter/material.dart';
import 'header.dart';
import 'hor_scroll_widget.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  bool _isSelected = false;
  funcFocus() => setState(() {
        if (_isSelected == true) {
          _isSelected = false;
        } else {
          _isSelected = true;
        }
      });

  var elements1 = {
    'Cinematic': 'images/cinem.jpg',
    'Anime': 'images/anime.jpg',
    'Sketch': 'images/sketch.jpg',
    'Render': 'images/render.jpg',
    'Art': 'images/art.jpg',
    'Cartoon': 'images/cartoon.jpg',
  };

  var tr_fl = [false, false, false, false, false, false, false];

  List data = [];

  @override
  Widget build(BuildContext context) {
    elements1.forEach((key, value) => {
          data.length != elements1.length ? data.add([key, value]) : null
        });

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 49, 55, 58),
              leading: Container(
                child: Image(image: AssetImage('images/fake_white.png')),
                padding: EdgeInsets.only(left: 20),
              ),
              leadingWidth: 140,
            ),
            body: Header(
              child: ListView(children: [
                HorizontalScrollWidget(
                  data: data,
                )
              ]),
            )));
  }
}

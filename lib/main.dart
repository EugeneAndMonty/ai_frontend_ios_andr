import 'package:ai_frontend/chooseNumber.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'header.dart';
import 'horizontalScrollWidget.dart';
import 'chooseStyle.dart';
import 'AspectRatio.dart';
import 'chooseSize.dart';
import 'dummy_data.dart';
import 'textInput.dart';

void main() {
  runApp(const App());
  WidgetsFlutterBinding.ensureInitialized();
}

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  List data_styles = [];
  List data_ratio = [];

  @override
  Widget build(BuildContext context) {
    elements1.forEach((key, value) => {
          data_styles.length != elements1.length
              ? data_styles.add([key, value])
              : null
        });
    elements2.forEach((key, value) => {
          data_ratio.length != elements2.length
              ? data_ratio.add([key, value])
              : null
        });

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 49, 55, 58),
              leading: Container(
                child: Image(image: AssetImage('images/logo.png')),
                padding: EdgeInsets.only(left: 20),
              ),
              leadingWidth: 140,
            ),
            body: Header(
              child: ListView(children: [
                textInput(),
                ChooseStyle(), // text input field holding data on submit
                HorizontalScrollWidget(
                  data: data_styles,
                ), //dynamically generated data, holding value at data_from_user_style
                ChooseSize(),
                AspectRatioChoice(
                  data: data_ratio,
                ), //dynamically generated data, holding value at data_from_ratio
                ChooseNumber(),
                GestureDetector(
                  //test data receiver from other widgets onSubmit
                  onTap: () {
                    print([
                      data_from_user_style,
                      data_from_ratio,
                      numberOfPictures.round().toInt()
                    ]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    height: 60,
                    child: Align(
                        child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oswald',
                          fontSize: 30),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ),
              ]),
            )));
  }
}

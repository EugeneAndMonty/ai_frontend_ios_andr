import 'package:ai_frontend/frame/custom_button.dart';
import 'package:ai_frontend/chooseNumber.dart';
import 'package:ai_frontend/frame/styles/styles.dart';
import 'package:flutter/material.dart';
import 'frame/body_background.dart';
import '/horizontalScrollWidget.dart';
import '/chooseStyle.dart';
import '/AspectRatio.dart';
import '/chooseSize.dart';
import 'initial_data.dart';
import '/textInput.dart';

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  // List data_styles = [];
  // List data_ratio = [];

  @override
  Widget build(BuildContext context) {
    // elements1.forEach((key, value) => data_styles.length != elements1.length
    //     ? data_styles.add([key, value])
    //     : null);
    // elements2.forEach((key, value) => data_ratio.length != elements2.length
    //     ? data_ratio.add([key, value])
    //     : null);

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
              child: Column(children: [
                textInput(),
                ChooseStyle(), // text input field holding data on submit
                HorizontalScrollWidget(
                  chooseStyleIcons: chooseStyleIcons,
                ), //dynamically generated data, holding value at data_from_user_style
                ChooseSize(),
                // AspectRatioChoice(
                //   data: data_ratio,
                // ), //dynamically generated data, holding value at data_from_ratio
                ChooseNumber(),
                CustomButton(
                  fontSize: fontSizeMainScreenButton,
                  lable: labelSubmitButton,
                  height: heightMainScreenButton,
                  width: widthMainScreenButton,
                  onPressed: () {},
                ),
              ]),
            )));
  }
}

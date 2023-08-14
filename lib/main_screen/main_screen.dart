import 'package:ai_frontend/frame/custom_button.dart';
import 'package:ai_frontend/frame/header.dart';
import '/main_screen/chooseNumber.dart';
import 'package:ai_frontend/styles/styles.dart';
import 'package:flutter/material.dart';
import '../frame/body_background.dart';
import 'horizontalScrollWidget.dart';
import '/main_screen/chooseStyle.dart';
import '/main_screen/AspectRatio.dart';
import '/main_screen/chooseSize.dart';
import '../initial_data.dart';
import 'textInput.dart';

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: Header(),
            body: Body(
              gradientColors: mainScreenGradientColors,
              gradientRange: mainScreenGradientRange,
              child: Column(children: [
                textInput(),
                ChooseStyle(),
                HorizontalScrollWidget(
                  chooseStyleIcons: chooseStyleIcons,
                ), 
                ChooseSize(),
                // AspectRatioChoice(
                //   data: data_ratio,
                // ), //dynamically generated data, holding value at data_from_ratio
                ChooseNumber(),
                CustomButton(
                  fontSize: largeSizeFont,
                  lable: labelSubmitButton,
                  height: heightMainScreenButton,
                  width: widthMainScreenButton,
                  onPressed: () {},
                ),
              ]),
            )));
  }
}

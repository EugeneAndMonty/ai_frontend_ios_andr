import 'package:ai_frontend/frame/custom_button.dart';
import 'package:ai_frontend/frame/footer.dart';
import 'package:ai_frontend/frame/header.dart';
import '/main_screen/chooseNumber.dart';
import 'package:ai_frontend/styles/styles.dart';
import 'package:flutter/material.dart';
import '../frame/body_background.dart';
import 'horizontalScrollWidget.dart';
import '/main_screen/chooseStyle.dart';
import 'aspectRatio.dart';
import '/main_screen/chooseSize.dart';
import '../initial_data.dart';
import 'textInput.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late bool setFooter = true;

  hideFooter() => setState(() {
        setFooter = false;
      });
  showFooter() => setState(() {
        setFooter = true;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: Header(),
      body: Body(
        gradientColors: mainScreenGradientColors,
        gradientRange: mainScreenGradientRange,
        child: NotificationListener(
          onNotification: (OverscrollIndicatorNotification notification) {
            if (!notification.leading) {
              showFooter();
            }
            return false;
          },
          child: GestureDetector(
            onVerticalDragDown: (details) {
              hideFooter();
            },
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextInput(),
                    ChooseStyle(),
                    HorizontalScrollWidget(
                      props: chooseStyleIcons,
                    ),
                    ChooseSize(),
                    ChooseAspectRatio(
                      props: chooseAspectRatio,
                    ),
                    ChooseNumber(
                      props: numberOfPictures,
                    ), //refactor
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: CustomButton(
                        fontSize: largeSizeFont,
                        label: labelSubmitButton,
                        height: heightMainScreenButton,
                        width: widthMainScreenButton,
                        onPressed: () {},
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Visibility(visible: setFooter, child: Footer()),
    ));
  }
}

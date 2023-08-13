import 'package:ai_frontend/frame/styles/styles.dart';
import 'package:ai_frontend/initial_data.dart';
import 'package:flutter/material.dart';

class HorizontalScrollWidget extends StatefulWidget {
  final data;
  final List<Map> chooseStyleIcons;
  const HorizontalScrollWidget(
      {super.key, this.data, required this.chooseStyleIcons});

  @override
  State<HorizontalScrollWidget> createState() => HorizontalScrollWidgetState();
}

var data_from_user_style;

class HorizontalScrollWidgetState extends State<HorizontalScrollWidget> {
  late String _nameMatch;
  focusOnChooseStyleIcons() => setState(() {
        for (var style in chooseStyleIcons) {
          style.containsValue(_nameMatch) && !style.containsKey('highlighted')
              ? style['highlighted'] = true
              : style.remove('highlighted');
        }
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        children: [
          ...widget.chooseStyleIcons.map((style) {
            return GestureDetector(
                onTap: () {
                  _nameMatch = style['icon'];
                  focusOnChooseStyleIcons();
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: style.containsValue(true)
                            ? Border.all(
                                width: 2,
                                color: Colors.white,
                                strokeAlign: BorderSide.strokeAlignOutside)
                            : null,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage(style['link']),
                            fit: BoxFit.fitWidth)),
                    margin: EdgeInsets.all(3),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(238, 61, 59, 59),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Text(
                            style['icon'],
                            textAlign: TextAlign.center,
                            style: customFontStyle(20),
                          )),
                    )));
          }),
        ], //new child
      ),
    );
  }
}

import 'package:ai_frontend/styles/styles.dart';
import 'package:ai_frontend/initial_data.dart';
import 'package:flutter/material.dart';

class HorizontalScrollWidget extends StatefulWidget {
  final List<Map> chooseStyleIcons;
  const HorizontalScrollWidget({
    super.key,
    required this.chooseStyleIcons,
  });

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
                            ? borderForChooseStyleIcons
                            : null,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage(style['link']),
                            fit: BoxFit.fitWidth)),
                    margin: EdgeInsets.all(marginBetweenChooseStyleIcons),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding:
                              EdgeInsets.all(paddingForTitleChooseStyleIcons),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: grayColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15))),
                          child: Text(
                            style['icon'],
                            textAlign: TextAlign.center,
                            style: customFontStyle(midSizeFont, FontWeight.w500,
                                whiteColorRegular),
                          )),
                    )));
          }),
        ], //new child
      ),
    );
  }
}

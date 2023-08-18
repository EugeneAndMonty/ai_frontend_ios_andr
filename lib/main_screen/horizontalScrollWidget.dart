import 'package:ai_frontend/styles/styles.dart';
import 'package:flutter/material.dart';

class HorizontalScrollWidget extends StatefulWidget {
  final List<Map> props;
  const HorizontalScrollWidget({
    super.key,
    required this.props,
  });

  @override
  State<HorizontalScrollWidget> createState() => HorizontalScrollWidgetState();
}

class HorizontalScrollWidgetState extends State<HorizontalScrollWidget> {
  late String _nameMatch;
  focusOnChooseStyleIcons() => setState(() {
        for (var prop in widget.props) {
          prop.containsValue(_nameMatch) && !prop.containsKey('highlighted')
              ? prop['highlighted'] = true
              : prop.remove('highlighted');
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
          ...widget.props.map((prop) {
            return GestureDetector(
                onTap: () {
                  _nameMatch = prop['icon'];
                  focusOnChooseStyleIcons();
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: prop.containsValue(true)
                            ? borderForChooseStyleIcons
                            : null,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage(prop['link']),
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
                            prop['icon'],
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

import 'package:flutter/material.dart';

class HorizontalScrollWidget extends StatefulWidget {
  final data;
  const HorizontalScrollWidget({super.key, this.data});

  @override
  State<HorizontalScrollWidget> createState() => HorizontalScrollWidgetState();
}

var data_from_user_style;

class HorizontalScrollWidgetState extends State<HorizontalScrollWidget> {
  bool isSelected = false;
  funcFocus() => setState(() {
        if (isSelected == true) {
          isSelected = false;
        } else {
          isSelected = true;
        }
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        children: [
          ...widget.data.map((pdata) {
            //using widget to pass data to our functions
              return GestureDetector(
                  onTap: () {
                 var x;
                  var y;
                  funcFocus();
                  data_from_user_style = pdata[0];
                  if (isSelected) {
                    widget.data.forEach((data1) {
                      if (data1.contains('true')) {
                        data1.remove('true');
                        y = data1;
                      }
                    });
                    if (!pdata.contains('true') && y != pdata) {
                      pdata.add('true');
                    }
                  } else {
                    widget.data.forEach((data1) {
                      if (data1.contains('true')) {
                        data1.remove('true');
                        x = data1;
                      }
                    });
                    x != pdata ? pdata.add('true') : null;
                  }
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          border: pdata.contains('true')
                          ? Border.all(
                              width: 2,
                              color: Colors.white,
                              strokeAlign: BorderSide.strokeAlignOutside)
                          : null,
                          borderRadius:
                              BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                              image: AssetImage(
                                  pdata[1]), //dynamically generated
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
                              pdata[0], //dynamically generated
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Oswald',
                              ),
                            )),
                      )));

          }).toList(),
        ], //new child
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AspectRatioChoice extends StatefulWidget {
  final data;

  const AspectRatioChoice({super.key, this.data});

  @override
  State<AspectRatioChoice> createState() => _AspectRatioChoiceState();
}

var data_from_ratio;

class _AspectRatioChoiceState extends State<AspectRatioChoice> {
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
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        width: double.infinity,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ...widget.data.map((pdata_ratio) {
            return GestureDetector(
                onTap: () {
                  var x;
                  var y;

                  funcFocus();
                  data_from_ratio = pdata_ratio[0];
                  if (isSelected) {
                    widget.data.forEach((data1) {
                      if (data1.contains(true)) {
                        data1.remove(true);
                        y = data1;
                      }
                    });
                    if (!pdata_ratio.contains(true) && y != pdata_ratio) {
                      pdata_ratio.add(true);
                    }
                  } else {
                    widget.data.forEach((data1) {
                      if (data1.contains(true)) {
                        data1.remove(true);
                        x = data1;
                      }
                    });
                    x != pdata_ratio ? pdata_ratio.add(true) : null;
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(132, 49, 55, 58),
                      border: pdata_ratio.contains(true)
                          ? Border.all(
                              width: 3,
                              color: Colors.white,
                              strokeAlign: StrokeAlign.outside)
                          : null,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  width: pdata_ratio[1][0],
                  height: pdata_ratio[1][1],
                  child: Align(
                      child: Text(pdata_ratio[0],
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16))),
                ));
          }).toList()
        ]));
  }
}

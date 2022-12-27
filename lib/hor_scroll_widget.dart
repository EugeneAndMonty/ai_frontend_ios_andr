import 'package:flutter/material.dart';

class HorizontalScrollWidget extends StatefulWidget {
  final data;
  const HorizontalScrollWidget({super.key, this.data});

  @override
  State<HorizontalScrollWidget> createState() => HorizontalScrollWidgetState();
}

class HorizontalScrollWidgetState extends State<HorizontalScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 1,
        scrollDirection: Axis.horizontal,
        children: [
          ...widget.data.map((pdata) {
            //using widget to pass data to our functions
            return FocusScope(
                autofocus: true,
                child: Focus(
                    descendantsAreFocusable: false,
                    child: Builder(builder: (BuildContext context) {
                      final FocusNode focusNode = Focus.of(context);
                      final bool hasFocus = focusNode.hasFocus;
                      return GestureDetector(
                          onTap: () {
                            if (hasFocus) {
                              focusNode.unfocus();
                            } else {
                              focusNode.requestFocus();
                              print(pdata[0]); //holding data from the event
                            }
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  border: hasFocus
                                      ? Border.all(
                                          width: 3, color: Colors.white)
                                      : null, //useState Custom Hook
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          pdata[1]), //dynamically generated
                                      fit: BoxFit.fitWidth)),
                              margin: EdgeInsets.all(4),
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
                    })));
          }).toList(),
        ], //new child
      ),
    );
  }
}

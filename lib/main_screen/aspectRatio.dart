import 'package:flutter/material.dart';

class ChooseAspectRatio extends StatefulWidget {
  final List<Map> props;
  const ChooseAspectRatio({super.key, required this.props});

  @override
  State<ChooseAspectRatio> createState() => _ChooseAspectRatioState();
}

class _ChooseAspectRatioState extends State<ChooseAspectRatio> {
  late String _nameMatch;
  focusOnChooseAspectRatio() => setState(() {
        for (var prop in widget.props) {
          prop.containsValue(_nameMatch) && !prop.containsKey('highlighted')
              ? prop['highlighted'] = true
              : prop.remove('highlighted');
        }
      });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ...widget.props.map((prop) {
        return GestureDetector(
            onTap: () {
              _nameMatch = prop['aspect_ratio'];
              focusOnChooseAspectRatio();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(132, 49, 55, 58),
                  border: prop.containsValue(true)
                      ? Border.all(
                          width: 2,
                          color: Colors.white,
                          strokeAlign: BorderSide.strokeAlignOutside)
                      : null,
                  borderRadius: BorderRadius.all(Radius.circular(9))),
              margin: EdgeInsets.symmetric(horizontal: 7),
              width: prop['size'][0],
              height: prop['size'][1],
              child: Center(
                child: Text(prop['aspect_ratio'],
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ));
      }).toList()
    ]);
  }
}

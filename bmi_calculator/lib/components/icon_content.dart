import 'package:flutter/material.dart';
import '../constructors.dart';


class IconContent extends StatelessWidget {

  IconContent({@required this.flutterIcon, this.label});

  final IconData flutterIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Icon will be here
        Icon(
          flutterIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(label,
        style: kLabelTextStyle,)
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constructors.dart';

class BottomButton extends StatelessWidget {

  BottomButton({@required this.onTap, @required this.label});
  final Function onTap;
  final String label;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(label,
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
          ),
        ),
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: kContainerHeight,
        decoration: BoxDecoration(
          color: Color(0xFFEB1555),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 1;

  void changeDeviceFace(){
    setState(() {
      leftImageNumber = Random().nextInt(6) +1;
      rightImageNumber = Random().nextInt(6)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeDeviceFace();
              },
              child: Image.asset('assets/images/dice$leftImageNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeDeviceFace();
                });
              },
              child: Image.asset('assets/images/dice$rightImageNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}

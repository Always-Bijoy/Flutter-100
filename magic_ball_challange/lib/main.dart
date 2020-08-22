import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromRGBO(0, 149, 251, 1),
      appBar: AppBar(
        title: Text('Magic Ball'),
        backgroundColor: Color.fromRGBO(0, 68, 167, 1.0),
      ),
      body: HomePage(),
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int randomImage=5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            setState(() {
              randomImage = Random().nextInt(5)+1;
            });
          },
          child: Image.asset('assets/images/ball$randomImage.png'),
        )
//        Image.asset('assets/images/ball1.png'),
      ),
    );
  }
}

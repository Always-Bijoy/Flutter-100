import 'dart:ffi';

import 'package:flutter/material.dart';

//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.purple, soundNumber:1),
              buildKey(color: Colors.red, soundNumber:2),
              buildKey(color: Colors.blueGrey, soundNumber:3),
              buildKey(color: Colors.cyan, soundNumber:4),
              buildKey(color: Colors.cyanAccent, soundNumber:5),
              buildKey(color: Colors.green, soundNumber:6),
              buildKey(color: Colors.purple, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = new AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: Container(
        color: color,
        child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text('Click me'),
        ),
      ),
    );
  }
}

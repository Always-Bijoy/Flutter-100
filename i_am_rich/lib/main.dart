import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title: Text('I am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://mir-s3-cdn-cf.behance.net/projects/404/947d5488393233.Y3JvcCw4NjIsNjc1LDE5LDA.jpg'),
          ),
        ),
      ),
  ),
  );
}

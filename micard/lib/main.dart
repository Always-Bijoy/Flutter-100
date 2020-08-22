import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://mir-s3-cdn-cf.behance.net/user/276/290745194636259.5d2baaaa62965.jpg'),
              ),
              Text('Bijoy Ghosh',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'pacifico'
                ),),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'sourceSans',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.teal.shade900,
                  ),
                  title: Text('+88 01793661826',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                      fontFamily: 'sourceSans'
                  ),),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 20.0,),
                      Text('allwayssbijoy@gmail.com'),
                    ],
                  ),),
              )
              /*Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text('allwayssbijoy@gmail.com', style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'sourceSans'
                  ),),
                ),
              )*/
            ],

          ),
        ),
      ),
    );
  }
}


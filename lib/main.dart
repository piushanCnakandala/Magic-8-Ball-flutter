import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue ,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber=1;

  void changeball() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1; //now print 1-5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                changeball();
              },
                child: Image(image: AssetImage('images/ball$ballNumber.png'))
            ),
             ),
        ],
      ),
    );
  }
}

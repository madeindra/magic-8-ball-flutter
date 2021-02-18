import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.blue,
    appBar: AppBar(
      title: Text('Magic 8 Ball'),
      backgroundColor: Colors.blue,
    ),
    body: MagicBall(),
  )));
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int number = 3;

  void randomize() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            randomize();
          },
          child: Image.asset('images/ball$number.png'),
        ),
      ),
    );
  }
}

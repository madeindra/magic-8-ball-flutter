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

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: () {
            print('pressed');
          },
          child: Image.asset('images/ball3.png'),
        ),
      ),
    );
  }
}

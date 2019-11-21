import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade400,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void onBallTap() {
    setState(() {
      print('Ball clicked');
      int nextBallNumber = ballNumber;
      while (nextBallNumber == ballNumber) {
        nextBallNumber = Random.secure().nextInt((5)) + 1;
      }
      ballNumber = nextBallNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: onBallTap,
            ),
          ),
        ],
      ),
    );
  }
}

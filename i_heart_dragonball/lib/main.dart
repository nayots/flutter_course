import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.amberAccent,
          appBar: AppBar(
            title: Text('I 💚 Dragon Ball 🐉🌟'),
            backgroundColor: Colors.lightGreen,
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/goku.png'),
            ),
          ),
        ),
      ),
    );

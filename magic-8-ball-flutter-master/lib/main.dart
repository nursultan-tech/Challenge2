// ignore_for_file: deprecated_member_use
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic 8 BALL'),
          backgroundColor: Colors.blue,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    ball = Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$ball.png')),
          ),
        ],
      ),
    );
  }
}

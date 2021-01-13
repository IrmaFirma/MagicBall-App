import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask me Anything'),
          backgroundColor: Colors.black,
        ),
        body: MagicBall(),
      ),
    ),
  );
}
class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  void ballFace() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                    ballFace();
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything',
                style: TextStyle(
                    fontSize: 30.0,
                ),
            ),
          ),
          backgroundColor: Colors.blue[700],
        ),
        body: magicBall(),
      )
    ),
  );
} 

class magicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {

  int answer = 1;

  void pressBall(){
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                pressBall();
              },
              child: Image.asset('images/ball$answer.png'),
            ),
          ),
        ],
      )
    );
  }
}



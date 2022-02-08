import "dart:math";

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: decisionMaking(),
  ));
}

class decisionMaking extends StatefulWidget {
  const decisionMaking({Key? key}) : super(key: key);

  @override
  _decisionMakingState createState() => _decisionMakingState();
}

class _decisionMakingState extends State<decisionMaking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: decision());
  }
}

class decision extends StatefulWidget {
  const decision({Key? key}) : super(key: key);

  @override
  _decisionState createState() => _decisionState();
}

class _decisionState extends State<decision> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
            onPressed: () {
              setState(() {
                ball = Random().nextInt(5) + 1;
              });
            },
            child: Expanded(child: Image.asset("images/ball$ball.png")))
      ],
    );
  }
}

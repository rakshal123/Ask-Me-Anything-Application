import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              backgroundColor: Colors.blue.shade500,
              centerTitle: true,
              title: Text('Ask Me Anything'),
            ),
            body: magicBall(),
          ),
      ),
    );

class magicBall extends StatefulWidget {
  const magicBall({Key key}) : super(key: key);

  @override
  magicBallState createState() => magicBallState();
}

class magicBallState extends State<magicBall> {
  @override
  Widget build(BuildContext context) {
    int ballState = Random().nextInt(5)+1;
    return Center(
      child: TextButton(
          onPressed: (){
            setState(() {
              ballState = Random().nextInt(5)+1;
            });
          },
          child: Image.asset('images/ball$ballState.png')
      ),
    );
  }
}




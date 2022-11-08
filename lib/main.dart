import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Center(
            child: Text('Ask Me Anything '),
          ),
        ),
        body: magicBall(),
      ),
    ),
  );
}

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  State<magicBall> createState() => _magicBallState();

}

class _magicBallState extends State<magicBall> {
  int yourQuestion=0;
  void changeAnswer(){
    setState(() {
      yourQuestion =Random().nextInt(5)+1;
      print('i got clicked $yourQuestion');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            child: Center(
              child: Image.asset('images/ball$yourQuestion.png'),
            ),
            onPressed: () {
              changeAnswer();
            },
          ),
        ),
      ],
    );
  }
}

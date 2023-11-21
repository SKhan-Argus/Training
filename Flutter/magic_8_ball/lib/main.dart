import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Ball();
}

class _Ball extends State<Ball> {

  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: TextButton(
        child: Center(
          child: Image.asset("images/ball$ballNumber.png"),
        ),
        onPressed: () {
         setState(() {
           ballNumber = Random().nextInt(5)+1;
         });
        },
      ),
    );
  }
}

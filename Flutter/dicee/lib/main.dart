import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}



class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  changeDiceFace1(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
    });

  }
  changeDiceFace2() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    changeDiceFace1();

                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    changeDiceFace2();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Expanded createKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('note$soundNumber.wav'));
        },
        child: Container(
          color: color,
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero), // Remove padding
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                createKey(Colors.red, 1),
                createKey(Colors.black, 2),
                createKey(Colors.blue, 3),
                createKey(Colors.yellow, 4),
                createKey(Colors.blueGrey, 5),
                createKey(Colors.purple, 6),
                createKey(Colors.orange, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'ui/counter_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Bloc Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CounterScreen(),
    );
  }
}






import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),

      body: Center(
        child: Text('this is home page'),
      ),
    );
  }

}
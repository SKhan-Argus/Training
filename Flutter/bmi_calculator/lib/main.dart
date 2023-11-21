import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTickMarkColor: Color(0xFF8D8E98),
          thumbColor: Color(0xFFEB1555),
          overlayColor: Color(0x29EB1555),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 30,
          ),
        ),
        primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),

      initialRoute: '/',
      routes: {
        '/': (context)=>InputPage(),
        '/result':(context)=>ResultsPage(),
      },
    );
  }
}

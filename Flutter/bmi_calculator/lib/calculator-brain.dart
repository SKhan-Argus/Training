import 'package:flutter/material.dart';

import 'dart:math';

class CalculatorBrain {
  final height;
  final weight;
  double bmi = 0;
  TextStyle resultTextStyle = TextStyle(
    color: Color(0xFF24D876),
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  CalculatorBrain({this.height, this.weight});

  String calcualteBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(bmi>35){
      return "Obesity";
    }
    else if (bmi > 25) {
      return "Overweight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }
  String getInterpretation() {
    if(bmi>35){
      return  "Nothing can be done now. Sorry.";
    }
    else if (bmi > 30) {
      return "You are significantly overweight. It's important to consult with a healthcare professional.";
    } else if (bmi > 25) {
      return "You are overweight. Consider making lifestyle changes and consult with a healthcare provider.";
    } else if (bmi > 18.5) {
      return "You have a normal BMI. Keep up the good work!";
    } else if (bmi > 17) {
      return "You are underweight. Consider a balanced diet and exercise for better health.";
    } else {
      return "You are severely underweight. It's crucial to seek medical advice and improve your nutrition.";
    }
  }


  TextStyle getResultTextStyle() {
    if(bmi>35){
      return TextStyle(
        color: Colors.red.shade900,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );
    }
    else if ((bmi > 25 && bmi <= 30) || (bmi > 17 && bmi <= 18.5)) {
      return TextStyle(
        color: Colors.yellow,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );
    } else if (bmi > 30 || bmi <= 17) {
      return TextStyle(
        color: Colors.red.shade400,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );
    }
    return TextStyle(
      color: Color(0xFF24D876),
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );
  }
}

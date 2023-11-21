import 'dart:async';

import 'package:bmi_calculator/calculator-brain.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/reusable_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  Color iconColorMale = Colors.white;
  Color iconColorFemale = Colors.white;

  final longPressGestureRecognizer = LongPressGestureRecognizer();
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender =
                            selectedGender == Gender.male ? null : Gender.male;
                        iconColorMale = selectedGender == Gender.male
                            ? Colors.blue
                            : Colors.white;
                        iconColorFemale = selectedGender == Gender.female
                            ? Colors.pink
                            : Colors.white;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: ReusableIcon(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                      color: iconColorMale,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = selectedGender == Gender.female
                            ? null
                            : Gender.female;
                        iconColorFemale = selectedGender == Gender.female
                            ? Colors.pink
                            : Colors.white;
                        iconColorMale = selectedGender == Gender.male
                            ? Colors.blue
                            : Colors.white;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: ReusableIcon(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                      color: iconColorFemale,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kNumberTextStyle),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                      });
                    },
                    min: 120,
                    max: 220,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onLongPress: () {
                                timer = Timer.periodic(Duration(milliseconds: 200), (timer) {
                                  // Reduce the age by 1 every 100 milliseconds while the button is long-pressed
                                  setState(() {
                                    weight--;
                                    if (weight < 0) {
                                      weight = 0; // Ensure age doesn't go below 0
                                    }
                                  });
                                });
                              },
                              onLongPressEnd: (LongPressEndDetails details){
                                timer?.cancel();
                              },
                              child: RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                            ),
                            GestureDetector(
                              onLongPress: () {
                                timer = Timer.periodic(Duration(milliseconds: 200), (timer) {
                                  // Reduce the age by 1 every 100 milliseconds while the button is long-pressed
                                  setState(() {
                                    weight++;
                                    if (weight < 0) {
                                      weight = 0; // Ensure age doesn't go below 0
                                    }
                                  });
                                });
                              },
                              onLongPressEnd: (LongPressEndDetails details){
                                timer?.cancel();
                              },
                              child: RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(

                              onLongPress: () {
                                timer = Timer.periodic(Duration(milliseconds: 200), (timer) {
                                  // Reduce the age by 1 every 100 milliseconds while the button is long-pressed
                                  setState(() {
                                    age--;
                                    if (age < 0) {
                                      age = 0; // Ensure age doesn't go below 0
                                    }
                                  });
                                });
                              },
                             onLongPressEnd: (LongPressEndDetails details){
                                timer?.cancel();
                             },
                              child: RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                    if(age<0){
                                      age=0;
                                    }
                                  });
                                },
                              ),
                            ),
                            GestureDetector(
                              onLongPress: () {
                                timer = Timer.periodic(Duration(milliseconds: 200), (timer) {
                                  // Reduce the age by 1 every 100 milliseconds while the button is long-pressed
                                  setState(() {
                                    age++;
                                    if (age < 0) {
                                      age = 0; // Ensure age doesn't go below 0
                                    }
                                  });
                                });
                              },
                              onLongPressEnd: (LongPressEndDetails details){
                                timer?.cancel();
                              },
                              child: RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Map<String, dynamic> data = {
                "bmi": calc.calcualteBMI(),
                "result": calc.getResult(),
                "interpretation": calc.getInterpretation(),
                "resultTextStyle" : calc.getResultTextStyle(),
              };

              Navigator.pushNamed(context, '/result', arguments: data);
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              decoration: BoxDecoration(
                color: kBottomContainerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}

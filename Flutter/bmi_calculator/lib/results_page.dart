import 'package:bmi_calculator/calculator-brain.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({super.key});



  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    String? result = data["result"];
    String? bmi = data["bmi"];
    String? interpretation = data["interpretation"];
    TextStyle? resultTextStyle = data["resultTextStyle"];


    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "BMI CALCULTOR",
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 1,

              child: Container(
                child: Text(
                  "YOUR RESULT",
                  style: kTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
              )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(result!, style: resultTextStyle,),
                  Text(bmi!, style: kBMITextStyle,),
                  Text(interpretation!, style: kBodyTextStyle, textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "RE-CALCULATE",
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

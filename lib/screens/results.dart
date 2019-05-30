import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

import 'package:bmi_calculator/components/calculate_button.dart';

class Results extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const Results({this.bmiResult, this.resultText, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Text('Your Result', style: kNumberTextStyle)),
          Expanded(
            flex: 5,
            child: ReusableCards(
              bgColor: kInActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText, style: kResultTextStyle),
                  Text(bmiResult,
                      style: TextStyle(
                          fontSize: 100, fontWeight: FontWeight.bold)),
                  Text(interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20))
                ],
              ),
            ),
          ),
          CalculateButton(
            buttonText: 'RECALCULATE',
            onTapped: () {
              Navigator.pop(context);
            },
          )
          //Text('10.6', style: kNumberTextStyle),
        ],
      ),
    );
  }
}

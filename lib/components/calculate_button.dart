import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class CalculateButton extends StatelessWidget {
  final Function onTapped;
  final String buttonText;

  const CalculateButton({this.onTapped, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kNumberTextStyle.copyWith(fontSize: 30.0),
          ),
        ),
        color: kButtonColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kButtonHeight,
      ),
    );
  }
}

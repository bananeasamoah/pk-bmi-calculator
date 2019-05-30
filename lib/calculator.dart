import 'dart:math';

class Calculator {
  final int weight;
  final int height;
  double _bmi;

  Calculator({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have an overweight, You need to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal weight, good job';
    } else {
      return 'You are underweight';
    }
  }
}

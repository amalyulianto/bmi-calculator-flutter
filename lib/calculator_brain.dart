import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculatorBMI() {
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

  String getSuggestion() {
     if (_bmi >= 25) {
      return 'Eat less, my friend.';
    } else if (_bmi > 18.5) {
      return 'You are good, Lord.';
    } else {
      return 'Eat is the only suggestion.';
    }
  }
}

import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBmi() {
    return (_bmi = weight / pow(height / 100, 2)).toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30)
      return 'Obese';
    else if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 30)
      return 'You have higher weight than 95% of people. Try to do intense exercise everyday.';
    else if (_bmi >= 25)
      return 'You have higher than normal body weight. Maybe, exercise more.';
    else if (_bmi >= 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have lower than normal body weight. You should eat a bit more.';
  }
}

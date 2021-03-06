import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {

  CalculatorBrain({@required this.height, this.weight});
   int height;
   int weight;
  double _bmi;


  String calculateBMI(){
    _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have higher than normal weight , so try exersice...';
    }
    else if(_bmi > 18.5){
      return 'You have Normal body weight,well done...';
    }
    else{
      return 'You have lower than normal weight, You need to eat more...';
    }
  }

}
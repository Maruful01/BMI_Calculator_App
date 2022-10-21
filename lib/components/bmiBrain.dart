import 'dart:math';

class BMIbrain {

BMIbrain ({ required this.height, required this.weight }); 
 final int height;
 final int weight;
 late double _bmi = weight / pow(height / 100, 2);

    // String calculateBMI () {
    //       double _bmi = 
    //       return _bmi.toStringAsFixed(1);
    // }

    String getResult () {
      if (_bmi < 18.5 )  {
        return 'Under weight';
      } else if (_bmi > 25) {
        return 'Over Weight';
      }
      else{
        return 'Normal';
      }
    }

    double  pBMI () {
      return _bmi;
    }

    String getInterpretation () {
       if (_bmi < 18.5 )  {
        return 'Your weight is Feathery, so you are recommended to gain your weight';
      } else if (_bmi > 25) {
        return 'You are recommended to loose some weight';
      }
      else{
        return 'You are healthy';
      }
    }

}
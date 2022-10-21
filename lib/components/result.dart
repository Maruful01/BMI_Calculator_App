import 'package:bmi_calculator/components/constance.dart';
import 'package:bmi_calculator/components/reusableCard.dart';
import 'package:flutter/material.dart';
import 'buttomButton.dart';

class BmiResult extends StatelessWidget {
  BmiResult({ required this.bmiResult, required this.bmi, required this.interpretation });

  final String  bmiResult;
  final double bmi; 
  final interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator',
        
        ),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Expanded(
          child: Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(15.0),
            child: const Text('Your Result',
            style: kTitleStyle,
            textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ReusableCard(
          color: kActiveCardColor, 
          cardWidget: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Text(bmiResult,
            style: kBMIresultLebel,
            ),
            Text(bmi.toStringAsFixed(1),
            style: kLebelNumStyle,
            ),

            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(interpretation,
              textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              
               ),
            ),
          ]),

          
          ),
           onPressed: () {}),
        ),

        ButtomButton( 
                    onPressed: () {
                          Navigator.pop(context);
          },
          title: 'RE-CALCULATE'),
      ]),
    );
  }
}
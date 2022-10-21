import 'package:bmi_calculator/components/buttomButton.dart';
import 'package:bmi_calculator/components/constance.dart';
import 'package:flutter/material.dart';
import 'components/reusableCard.dart';
import 'components/genderCard.dart';
import 'components/roundedIconButton.dart';
import 'components/result.dart';
import 'components/bmiBrain.dart';

  enum CardType {
    maleGanderCard,
    femaleGanderCard,
    heightCard,
    weightCard,
    ageCard,
    notSelected
  }

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  late CardType selectedGender = CardType.notSelected;
  int userHeight = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.article,
        color: Colors.lightBlueAccent,
        size: 50.0,
        ),
        backgroundColor: kBackgroundColor,
        elevation: 0.0,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


          Expanded(
            child: Row(
              children: <Widget>[
                   Expanded(
                      child: ReusableCard(
                        onPressed: () {
                        setState(() {
                          selectedGender = CardType.maleGanderCard;
                        });
                        },
                         color: selectedGender == CardType.maleGanderCard ? kActiveCardColor : kInActiveCardColor,
                         cardWidget: GenderCard(label: 'MALE', icon: Icons.male_outlined,),
                      ),
                  ),
                  Expanded(
                      child: ReusableCard(
                        onPressed: () {
                          setState(() {
                          selectedGender = CardType.femaleGanderCard;
                          });
                        },
                        color: selectedGender == CardType.femaleGanderCard ? kActiveCardColor : kInActiveCardColor, 
                        cardWidget: GenderCard(label: 'FEMALE', icon: Icons.female_outlined,)
                        ),
                  ),  
          ],
          ),
          ),

          Expanded(
          child: ReusableCard(
            onPressed: () {
               setState(() {
                selectedGender = CardType.heightCard;
               });
            },
          color: selectedGender == CardType.heightCard ? kActiveCardColor : kInActiveCardColor,
          cardWidget: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('HEIGHT',
              style: kLebelStyle,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.ideographic,
                children: <Widget> [
                  Text(userHeight.toString(),
                  style: kLebelNumStyle,
                  ),
                  const Text('cm', 
                  style: kLebelStyle,
                  )
                ],
              ),

              SliderTheme(
                data: const SliderThemeData(
                  activeTrackColor: Colors.lightBlueAccent,
                  inactiveTrackColor: Colors.blueGrey,
                  thumbColor: Colors.grey,
                  overlayColor: Color(0x5B9E9E9E),
                ),
                child: Slider(
                  value: userHeight.toDouble(), 
                  max: 300,
                  min: 152,
                  onChanged: (double value) {
                    setState(() {
                      userHeight = value.toInt();
                    });
                  }
                  ),
              ),
            ],
          ),
          ),
          ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPressed: () {
                      setState(() {
                        selectedGender = CardType.weightCard;
                      });
                      },
                      color: selectedGender == CardType.weightCard ? kActiveCardColor : kInActiveCardColor,
                       cardWidget: Center(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                          const Text('WEIGHT',
                          style: kLebelStyle,
                          ),
                          Text(weight.toString(),
                          style: kLebelNumStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icons.remove,
                            ),

                            RoundedIconButton(
                              onPressed: () {
                                setState(() {
                                  weight ++;
                                });
                              },
                              icon: Icons.add,
                            ),
                          ])
                         ]),

                         
                    ),
                    ),
                    ),
                  Expanded(child: ReusableCard(
                    onPressed: () {
                       setState(() {
                        selectedGender = CardType.ageCard;
                      });
                    },
                    color: selectedGender == CardType.ageCard ? kActiveCardColor : kInActiveCardColor,
                     cardWidget: Center(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Text('AGE',
                        style: kLebelStyle,
                        ),

                         Text(age.toString(),
                        style: kLebelNumStyle,
                        ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedIconButton( 
                          icon: Icons.remove,
                           onPressed: () {
                             setState(() {
                              age <= 5 ? age == 5  :  age--;
                             });
                           }
                           ),

                        RoundedIconButton( 
                          icon: Icons.add,
                           onPressed: () {
                            setState(() {
                              age >= 60 ? age == 60  :  age++;
                            });
                           }
                           ),
                        ],
                      )


                      ],
                     ),
                     ),
                     ),
                     ),  
          ],
          ),
          ),
         
         ButtomButton( 
                    onPressed: () {
          BMIbrain clc = BMIbrain(height: userHeight, weight: weight);
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BmiResult( bmiResult: clc.getResult(), bmi: clc.pBMI(), interpretation: clc.getInterpretation(), )),
          );
          },
          title: 'CALCULATE'),
        ],
      ),
    );
  }
}



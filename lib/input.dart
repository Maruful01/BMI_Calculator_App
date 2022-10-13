import 'package:flutter/material.dart';
import 'components/reusableCard.dart';
import 'components/genderCard.dart';

  const backgroundColor = Color(0xFF3619C9);
  const activeCardColor = Color(0xFF5451D6);
  const inActiveCardColor = Color(0xFF925351D6);
  const buttomContainerColor = Colors.redAccent;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.article,
        color: Colors.yellow,
        size: 50.0,
        ),
        backgroundColor: backgroundColor,
        elevation: 0.0,
      ),

      body: Column(
        children: <Widget>[

          Expanded(
            child: Row(
              children: <Widget>[
                   Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = CardType.maleGanderCard;
                        });
                        },
                      child: ReusableCard(
                         color: selectedGender == CardType.maleGanderCard ? activeCardColor : inActiveCardColor,
                         cardWidget: GenderCard(label: 'MALE', icon: Icons.male_outlined,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                                onTap: () {
                        setState(() {
                          selectedGender = CardType.femaleGanderCard;
                        });
                        },
                      child: ReusableCard(
                        color: selectedGender == CardType.femaleGanderCard ? activeCardColor : inActiveCardColor, 
                        cardWidget: GenderCard(label: 'FEMALE', icon: Icons.female_outlined,)
                        ),
                    ),
                  ),  
          ],
          ),
          ),

          Expanded(child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = CardType.heightCard;
              });
            },
          child: ReusableCard(
          color: selectedGender == CardType.heightCard ? activeCardColor : inActiveCardColor,
           cardWidget: Center(child: Column(),
          ),
          ),
          ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                  Expanded(child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = CardType.weightCard;
                      });
                    },
                    child: ReusableCard(
                      color: selectedGender == CardType.weightCard ? activeCardColor : inActiveCardColor,
                       cardWidget: Center(child: Column(),
                    ),
                    ),
                    ),
                    ),
                  Expanded(child: ReusableCard(color: inActiveCardColor, cardWidget: Center(child: Column()),)),  
          ],
          ),
          ),
         
          Container(
            margin: const EdgeInsets.all(10),
            height: 80,
            decoration: BoxDecoration(
            color:  buttomContainerColor,
            borderRadius: BorderRadius.circular(10),
            ),
          ),
          
        ],
      ),
    );
  }
}


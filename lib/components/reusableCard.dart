import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget cardWidget;

   ReusableCard ({required this.color, required this.cardWidget});



  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
         color: color,
         borderRadius: BorderRadius.circular(5),
                ),
                child: cardWidget,
              );
  }
}
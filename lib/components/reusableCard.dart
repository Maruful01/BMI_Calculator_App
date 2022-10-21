import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color color;
  final Widget cardWidget;
  final VoidCallback? onPressed;


   ReusableCard ({ required this.color, required this.cardWidget, required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
      margin: const EdgeInsets.all(7.0),
      decoration: BoxDecoration(
      color: color,
           borderRadius: BorderRadius.circular(5),
                  ),
                  child: cardWidget,
                ),
    );
  }
}
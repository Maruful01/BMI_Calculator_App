import 'package:bmi_calculator/components/constance.dart';
import 'package:flutter/material.dart';

class ButtomButton extends StatelessWidget {
 
  const ButtomButton({ required this.onPressed, required this.title });

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onPressed,
           child: Container(
              margin: const EdgeInsets.all(10),
              height: 60,
              decoration: BoxDecoration(
              color:  kInputButtomContainerColor,
              borderRadius: BorderRadius.circular(10),
              ),
                   child: Center(
                     child: Text(title,
                     style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w500,
                     ),
                     ),
                   ),
            ),
         );
  }
}
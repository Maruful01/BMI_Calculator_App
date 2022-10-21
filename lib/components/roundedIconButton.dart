import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({ required this.icon, required this.onPressed });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton (
      onPressed: onPressed,
      fillColor: Colors.blueGrey,
      child: Icon(icon,
      color: Colors.lightBlueAccent,
      ),
      shape: CircleBorder(),
      elevation: 0.0,
      constraints: const BoxConstraints(minWidth: 80.0, minHeight: 50.0)
       
      
      );
  }
}
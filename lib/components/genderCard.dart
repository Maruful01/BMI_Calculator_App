import 'package:flutter/material.dart';
import 'constance.dart';



class GenderCard extends StatelessWidget {

  final IconData icon;
  final String label;
  GenderCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
          Icon(
            icon, 
            size: 58,
            color: const Color(0xFFBCBCBC),
            ),
            const SizedBox(height: 10),
            Text(label,
            style: kLebelStyle)
      ],
    );
  }
}

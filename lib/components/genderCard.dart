import 'package:flutter/material.dart';

const TextStyle lebelStyle = TextStyle(color: Color.fromARGB(255, 142, 141, 141), fontSize: 16, letterSpacing: 2.0);

class GenderCard extends StatelessWidget {

  final IconData icon;
  final String label;
  GenderCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
          Icon(
            icon, 
            size: 58,
            color: const Color(0xFFBCBCBC),
            ),
            const SizedBox(height: 10),
            Text(label,
            style: lebelStyle)
      ],
    );
  }
}

import 'package:bmi_calculator/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => {
  WidgetsFlutterBinding.ensureInitialized(),

   runApp(BMICalculator()),
   SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
   ])
};

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF4530B3),
      ),
    );
  }
}


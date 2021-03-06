import 'package:flutter/material.dart';
import 'Screens/InputPage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF100F1E),
        scaffoldBackgroundColor: Color(0xFF100F1E),
      ),
      home: InputPage(),
    );
  }
}

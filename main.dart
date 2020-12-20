import 'package:flutter/material.dart';
import 'input_page.dart';
void main(){
  runApp(BMI());
}
class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // 0xFF = for using custom color value
        primaryColor: Color(0xFF0E0E0E),
        scaffoldBackgroundColor:  Color(0xFF0E0E0E),

      ),
      home: inputPage(),
    );
  }
}


import 'package:bmi_calculator/inputPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF090B21),
          scaffoldBackgroundColor: Color(0xFF090B21),
          accentColor: Color(0xFFEA1556),
          textTheme: TextTheme(body1: TextStyle(color: Color(0xffffffff)))),
      home: InputPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'inputpage.dart';
import 'result_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      theme:ThemeData(
         primaryColor:Color(0xff12153B),
        backgroundColor: Color(0xff0C1234),
        accentColor: Color(0xffFF0067),
        scaffoldBackgroundColor: Color(0xff0C1234),


      ),
      routes:
      {
        'home' : (context) => InputPage(),

        'result' : (context)=> Result(),
      }
    );
  }
}



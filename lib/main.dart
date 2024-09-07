import 'package:flutter/material.dart';
import 'package:idn_exam_remedial/pages/catalog.dart';
import 'package:idn_exam_remedial/pages/homePage.dart';
import 'package:idn_exam_remedial/pages/onBoarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'Boarding/',
      routes: {
        'Boarding/': (context) => OnBoarding(),
        'Home/': (context) => HomePage(),
        'Catalog/': (context) => Catalog(),
      },        
    );
  }
}

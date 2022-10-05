import 'package:bmi_calculator/modules/bmi_result/bmi_result_screen.dart';
import 'package:bmi_calculator/modules/bmi/bmi_sacreen.dart';
import 'package:bmi_calculator/modules/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

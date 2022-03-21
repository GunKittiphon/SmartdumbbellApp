import 'package:flutter/material.dart';
import 'home_screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String appTitle = "SmartDumbbell";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Home(title: appTitle),
    );
  }
}

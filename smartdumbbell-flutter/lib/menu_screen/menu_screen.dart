import 'package:flutter/material.dart';
import 'widget/gesture_box.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      padding: const EdgeInsets.all(20),
      children: const <Widget>[
        GestureBox(gesture: 1, reps: 10, setOfrep: 5, status: true),
        GestureBox(gesture: 2, reps: 10, setOfrep: 5, status: true),
        GestureBox(gesture: 3, reps: 10, setOfrep: 5, status: true),
        GestureBox(gesture: 4, reps: 20, setOfrep: 5, status: false),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import '../../constants.dart';

class GestureBox extends StatelessWidget {
  final dynamic gesture;
  final dynamic reps;
  final dynamic setOfrep;
  final bool status;
  final bool active;
  const GestureBox(
      {Key? key,
      this.gesture,
      this.reps,
      this.setOfrep,
      required this.status,
      this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String titleGesture = "Dumbbell Dead Lifts";
    String imageGesture = "dead_lifts.gif";

    switch (gesture) {
      case 1:
        titleGesture = "Dumbbell Dead Lifts";
        imageGesture = "dead_lifts.gif";
        break;
      case 2:
        titleGesture = "Dumbbell Front Raises";
        imageGesture = "front_raises.gif";
        break;
      case 3:
        titleGesture = "Dumbbell Bent Over Row";
        imageGesture = "bent_over_row.gif";
        break;
      case 4:
        titleGesture = "Dumbbell Cuban Press";
        imageGesture = "cuban_press.gif";
        break;
      case 5:
        titleGesture = "Dumbbell Fly";
        imageGesture = "fly.gif";
        break;
    }
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            boxShadow: const [
              BoxShadow(
                color: GestureBoxBorder,
                blurRadius: 2,
                offset: Offset(0, 0), // Shadow position
              ),
            ]),
        child: Row(
          children: [
            Image.asset('assets/gesture/$imageGesture',
                height: 100, fit: BoxFit.fill),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$reps REPS $setOfrep SET',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(titleGesture, textAlign: TextAlign.left)
                ]),
            (status) ? const Text('Status') : const Text('')
          ],
        ));
  }
}

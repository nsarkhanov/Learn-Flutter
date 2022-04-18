import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String answer;
  Answer(this.onPressed, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.amberAccent,
      margin: const EdgeInsets.all(1.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(answer),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionsText;
  // ignore: non_constant_identifier_names
  Question(this.questionsText);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      child: Text(
        questionsText,
        style: const TextStyle(
          fontSize: 25.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

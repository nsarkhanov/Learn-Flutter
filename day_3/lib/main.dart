import 'package:flutter/material.dart';
import 'package:day_3/utilities/answers.dart';
import 'package:day_3/utilities/questions.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // ignore: non_constant_identifier_names
  int question_Index = 0;
  void onPressed() {
    setState(() {
      if (question_Index < 1) {
        question_Index = question_Index + 1;
      } else {
        question_Index = 0;
      }
    });
  }

  var questions = [
    {
      "question_text": "What is your favorite color?",
      "answers": ["Red", 'White', "Black"]
    },
    {
      "question_text": "What is your favorite animal?",
      "answers": ["Bird", "Leon", "Babit"],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("day 3 example"),
        ),
        body: Column(
          children: [
            Question(
              questions[question_Index]["question_text"],
            ),
            Answer(
                onPressed,
                (questions[question_Index]["answer"] as List<String>)
                    .toList()[0]),
            Answer(
                onPressed,
                (questions[question_Index]["answer"] as List<String>)
                    .toList()[1]),
            Answer(
                onPressed,
                (questions[question_Index]["answer"] as List<String>)
                    .toList()[2])
            // button(onPressed, question_Index, 2)
          ],
        ),
      ),
    );
  }
}

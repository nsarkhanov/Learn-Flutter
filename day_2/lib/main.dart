import 'package:flutter/material.dart';
import 'question.dart';
import 'button.dart';
void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  var questions = ["day 1 examples", "day 2 examples"];
  int questions_index = 0;
  void answerQuestion() {
    setState(
      () {
        if (questions_index<questions.length-1){
          questions_index = questions_index + 1;
          print(questions_index);
        }
        else{
          questions_index=0;
        }
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Schedule of Learning Flutter"),
        ),
        body: Column(
          children: [
            Question(questions[questions_index]),
            Button(answerQuestion,"yes"),
            // ElevatedButton(
            //   onPressed: answerQuestion,
            //   child: Text("Yes"),
            // ),
            Button(answerQuestion,"No"),
            Button(answerQuestion,"maybe"),
          ],
        ),
      ),
    );
  }
}

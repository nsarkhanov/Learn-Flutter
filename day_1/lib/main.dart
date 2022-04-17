import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test app "),
        ),
        body: Center(
          child: Text("The text here "),
        ),
      ),
    );
  }
}

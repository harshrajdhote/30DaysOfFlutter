import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // runApp provided by flutter to initiate, takes widght tree
  //and shows it on screen
}

class MyApp extends StatelessWidget {
  @override
  var questionIndex = 0;
  Widget build(BuildContext context) {
    //home is named arg
    var questions = [
      "what's your favourite color?",
      "what's your favourite animal?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Ans 1"),
              onPressed: () {
                questionIndex = questionIndex + 1;
                print("Answer choosen");
              },
            ),
            RaisedButton(
              child: Text("Ans 2"),
              onPressed: () {
                questionIndex = questionIndex + 1;
                print("Answer choosen");
              },
            ),
            RaisedButton(
              child: Text("Ans 3"),
              onPressed: () {
                questionIndex = questionIndex + 1;
                print("Answer choosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}

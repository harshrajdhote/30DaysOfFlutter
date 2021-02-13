import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp()); // runApp provided by flutter to initiate, takes widght tree
  //and shows it on screen
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //_ means private in dart
  var questionIndex = 0;
  var _totalScore = 0;
  final questions = const [
    {
      "questionText": "What's your favourite Color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
      ],
    },
    {
      "questionText": "What's your favourite Animal?",
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Rabbit', 'score': 3},
      ]
    },
    {
      "questionText": "What's your favourite City?",
      'answers': [
        {'text': 'London', 'score': 10},
        {'text': 'New York', 'score': 5},
        {'text': 'Tokyo', 'score': 3},
        {'text': 'Mumbai', 'score': 1},
      ]
    }
  ];
  void answerQuestion(int score) {
    if (questionIndex < questions.length) {}
    _totalScore = _totalScore + score;
    print(_totalScore);
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //home is named arg

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(answerQuestion, questions, questionIndex)
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}

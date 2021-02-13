import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(@required this.answerQuestion, @required this.questions,
      @required this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        /*typecasting*/ ...(questions[questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((ans) {
          return Answer(() => answerQuestion(ans['score']), ans['text']);
        }).toList(),
      ],
    );
  }
}

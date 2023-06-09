import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final Function(int)? answerHandeler;
  final int questionIndex;

  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerHandeler,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
              selectHandler: () => answerHandeler!(answer['score']),
              answerText: answer['text'] as String);
        }).toList(),
      ],
    );
  }
}

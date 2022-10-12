import 'package:flutter/material.dart';
import 'question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qsIdx;
  final VoidCallback nextQuestion;
  //Any such variables without which the component cannot work needs to have required
  const Quiz(
      {required this.questions,
      required this.nextQuestion,
      required this.qsIdx});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qsIdx]['questionText'] as String,
        ),
        ...(questions[qsIdx]['answers'] as List<String>).map((ans) {
          return Answer(ans, nextQuestion);
        }).toList()
      ],
    );
  }
}

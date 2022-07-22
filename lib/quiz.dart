import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  int quesin;
  final Function qanswer;
  Quiz(this.ques, this.quesin, this.qanswer);
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Question(ques[quesin]['questionText'] as String),
        ...(ques[quesin]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
              () => qanswer(answer['value']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}

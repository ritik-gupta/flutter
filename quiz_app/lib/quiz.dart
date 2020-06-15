import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget{
  final List<Map<String, Object>> questions;
  final int qIndex;
  final Function ansQues;

  Quiz({@required this.questions,@required this.ansQues,@required this.qIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
                  children: <Widget>[
                    Question(questions[qIndex]['questionText']),
                    ...(questions[qIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answers(ansQues, answer);
                    }).toList()
                  ],
                );
  }
}
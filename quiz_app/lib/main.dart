import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': ['Black', 'Blue', 'Red', 'Green']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favourite season?',
      'answers': ['Summer', 'Winter', 'Rainy', 'Spring'],
    },
  ];

  void _ansQues() {
    setState(() {
      _qIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('This is an AppBar'),
      ),
      body: _qIndex < _questions.length
          ? Quiz(
              ansQues: _ansQues,
              qIndex: _qIndex,
              questions: _questions,
            )
          : Result(),
    ));
  }
}

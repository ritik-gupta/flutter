import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  static const questions = [
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
          body: _qIndex < questions.length
              ? Column(
                  children: <Widget>[
                    Question(questions[_qIndex]['questionText']),
                    ...(questions[_qIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answers(_ansQues, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text("Finished!"),
                )),
    );
  }
}

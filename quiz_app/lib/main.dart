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
  var _totalScore = 0;
  static const _questions = [
    {
      'questionText': 'Ctrl, Shift and Alt are called ____ keys?',
      'answers': [
        {'text': 'Modifier', 'score': 10},
        {'text': 'function', 'score': 0},
        {'text': 'alphanumeric', 'score': 0},
        {'text': 'adjustment', 'score': 0}
      ]
    },
    {
      'questionText': 'MS-Word is an example of _____',
      'answers': [
        {'text': 'An operating system', 'score': 0},
        {'text': 'A processing device', 'score': 0},
        {'text': 'Application software', 'score': 10},
        {'text': 'An input device', 'score': 0}
      ]
    },
    {
      'questionText': 'A computer cannot "boot" if it does not have the _____',
      'answers': [
        {'text': 'Compiler', 'score': 0},
        {'text': 'Loader', 'score': 0},
        {'text': 'Operating system', 'score': 10},
        {'text': 'Assembler', 'score': 0}
      ]
    },
    {
      'questionText':
          '________ is the process of dividing the disk into tracks and sectors',
      'answers': [
        {'text': 'Tracking', 'score': 0},
        {'text': 'Formatting', 'score': 10},
        {'text': 'Crashing', 'score': 0},
        {'text': 'Allotting', 'score': 0}
      ]
    },
    {
      'questionText':
          '_____are attempts by individuals to obtain confidential information from you by falsifying their identity',
      'answers': [
        {'text': 'Phishing trips', 'score': 0},
        {'text': 'Phishing scams', 'score': 10},
        {'text': 'Computer viruses', 'score': 0},
        {'text': 'Spyware scams', 'score': 0}
      ]
    },
    {
      'questionText': 'Junk e-mail is also called ______',
      'answers': [
        {'text': 'Spam', 'score': 10},
        {'text': 'Spoof', 'score': 0},
        {'text': 'Sniffer Script', 'score': 0},
        {'text': 'Spool', 'score': 0}
      ]
    },
    {
      'questionText': 'Microsoft Office is an example of a ______',
      'answers': [
        {'text': 'Closed source software', 'score': 0},
        {'text': 'Open source software', 'score': 0},
        {'text': 'Horizontal market software', 'score': 10},
        {'text': 'vertical market software', 'score': 0}
      ]
    },
    {
      'questionText': 'By default, your documents print in ________ mode',
      'answers': [
        {'text': 'Landscape', 'score': 0},
        {'text': 'Page Setup', 'score': 0},
        {'text': 'Portrait', 'score': 10},
        {'text': 'Print View', 'score': 0}
      ]
    },
    {
      'questionText': 'The first computer was programmed using _____',
      'answers': [
        {'text': 'Assembly language', 'score': 0},
        {'text': 'Spaghetti code', 'score': 0},
        {'text': 'Source code', 'score': 0},
        {'text': 'Machine language', 'score': 10},
      ]
    },
    {
      'questionText': 'Storage capacity of magnetic disk depends on ______',
      'answers': [
        {'text': 'disk pack in disk surface', 'score': 0},
        {'text': 'bits per inch of tracks', 'score': 0},
        {'text': 'tracks per inch of surface', 'score': 0},
        {'text': 'All of the above', 'score': 10}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  void _ansQues(int score) {
    _totalScore += score;
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
          : Result(_totalScore, _resetQuiz),
    ));
  }
}

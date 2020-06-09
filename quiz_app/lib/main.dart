import 'package:flutter/material.dart';
import './questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  void _ansQues(){
    setState(() {
      _qIndex += 1;  
    });
  }
  @override
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favourite colour',
      'What\'s your favourite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is an AppBar'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_qIndex]),
            RaisedButton(
              child: Text('Ans1'),
              onPressed: _ansQues,
              ),
            RaisedButton(
              child: Text('Ans2'),
              onPressed: _ansQues,
              ),
            RaisedButton(
              child: Text('Ans3'),
              onPressed: _ansQues,
              ),
          ],
        )
      ),
    );
  }
}

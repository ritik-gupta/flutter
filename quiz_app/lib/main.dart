import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;

  void ansQues(){
    setState(() {
      qIndex += 1;  
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
            Text(questions[qIndex]),
            RaisedButton(
              child: Text('Ans1'),
              onPressed: ansQues,
              ),
            RaisedButton(
              child: Text('Ans2'),
              onPressed: ansQues,
              ),
            RaisedButton(
              child: Text('Ans3'),
              onPressed: ansQues,
              ),
          ],
        )
      ),
    );
  }
}

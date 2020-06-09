import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is an AppBar'),
        ),
        body: Column(
          children: <Widget>[
            Text('Question 1'),
            RaisedButton(
              child: Text('Ans1'),
              onPressed: null,
              ),
            RaisedButton(
              child: Text('Ans2'),
              onPressed: null,
              ),
            RaisedButton(
              child: Text('Ans3'),
              onPressed: null,
              ),
          ],
        )
      ),
    );
  }
}

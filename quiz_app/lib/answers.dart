import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function ansHandler;
  Answers(this.ansHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.blue,
            child: Text('Answer 1'),
            onPressed: ansHandler));
  }
}

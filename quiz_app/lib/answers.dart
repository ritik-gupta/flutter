import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function ansHandler;
  final String ansText;
  Answers(this.ansHandler, this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(ansText),
            onPressed: ansHandler));
  }
}

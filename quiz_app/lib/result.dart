import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get finalResult {
    return ('Finished!\nFinal Score: ' + resultScore.toString() + "/100");
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        finalResult,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      RaisedButton(
        child: Text("Reset Quiz!"),
        onPressed: resetHandler,
      ),
    ]);
  }
}

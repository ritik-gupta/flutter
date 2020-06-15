import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get finalResult {
    return ('Finished!\nFinal Score: ' + resultScore.toString() + "/100");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        finalResult,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

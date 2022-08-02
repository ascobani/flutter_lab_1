import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    resultText = 'You did it!';
    if (resultScore <= 1) {
      resultText = 'Need to study';
    } else if (resultScore <= 2) {
      resultText = 'Not bad';
    } else if (resultScore <= 3) {
      resultText = 'You are a genious';
    } else {
      resultText = 'idk';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              child: Text('Restart Quiz'),
              onPressed: resetHandler,
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                onPrimary: Colors.amberAccent,
              )),
        ],
      ),
    );
  }
}

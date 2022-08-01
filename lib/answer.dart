import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback sellectHandler;
  final String answerText;

  Answer(this.sellectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        onPressed: sellectHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}

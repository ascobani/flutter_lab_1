import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback sellectHandler;
  final String answerText;

  Answer(this.sellectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: sellectHandler,
      ),
    );
  }
}

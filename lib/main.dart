import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionsIndex = 0;
  var answerIndex = 0;

  void answerQuestion() {
    setState(() {
      questionsIndex = questionsIndex + 1;
      answerIndex = answerIndex + 1;
    });
    print(questionsIndex);
    print(answerIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['1+1=?', '1+3=?', '1+5=?', '1,19=?'];
    var answers = ['2', '4', '6', '20'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('MyApp'),
          ),
          body: Column(
            children: [
              Text(
                questions[questionsIndex],
              ),
              RaisedButton(
                child: Text(answers[answerIndex]),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text(answers[answerIndex]),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text(answers[answerIndex]),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text(answers[answerIndex]),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}

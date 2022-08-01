import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/questions.dart';

import './questions.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionsIndex = 0;
  var _answerIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
      _answerIndex = _answerIndex + 1;
    });
    print(_questionsIndex);
    print(_answerIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = ['1+1=?', '1+3=?', '1+5=?', '1+19=?'];
    var _answers = ['2', '4', '6', '20'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('MyApp'),
          ),
          body: Column(
            children: [
              Question(
                _questions[_questionsIndex],
              ),
              RaisedButton(
                child: Text(_answers[_answerIndex]),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text(_answers[_answerIndex]),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text(_answers[_answerIndex]),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text(_answers[_answerIndex]),
                onPressed: _answerQuestion,
              ),
            ],
          )),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  final _questions = const [
    {
      'questionText': 'Which is greater than 4?',
      'answers': [
        {'text': '5', 'score': 1},
        {'text': '-5', 'score': 0},
        {'text': '-1/2', 'score': 0},
        {'text': '-25', 'score': 1},
        {'text': '3', 'score': 0},
      ],
    },
    {
      'questionText': 'Which is the smallest?',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '-1', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '10', 'score': 0},
        {'text': '-11', 'score': 1},
      ],
    },
    {
      'questionText': 'Combine terms: 12a + 26b -4b – 16a',
      'answers': [
        {'text': '4a + 22b', 'score': 0},
        {'text': '-28a + 30b', 'score': 0},
        {'text': ' -4a + 22b', 'score': 1},
        {'text': '28a + 30b', 'score': 0},
        {'text': '13a + 33b', 'score': 0},
      ],
    },
  ];
  var _questionsIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
      _totalScore = _totalScore + score;
    });
    print(_questionsIndex);
    if (_questionsIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions :(');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: _questionsIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionsIndex: _questionsIndex,
                questions: _questions,
              )
            : Result(_totalScore, resetQuiz,),
      ),
    );
  }
}

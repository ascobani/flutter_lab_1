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
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'score':0},
        {'text': 'Red', 'score':0},
        {'text': 'Blue', 'score':0},
        {'text': 'White', 'score':1},
        {'text': 'Green', 'score':0},
      ],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 0},
        {'text': 'Dog', 'score': 0},
        {'text': 'Snake', 'score':0},
        {'text': 'Spider', 'score':1},
        {'text': 'Bear', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is your favorite instrcutor',
      'answers': [
        {'text': 'Max', 'score':1},
        {'text': 'Daniel', 'score':0},
        {'text': 'Robin', 'score':0},
        {'text': 'Kevin', 'score':0},
        {'text': 'Pope', 'score':0},
      ],
    },
  ];
  var _questionsIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
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
            : Result(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';
import './quiz_widget.dart';
import './result_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  int _totalScore = 0;

  final List<Questions> _questionsList = [
    Questions('What is your favourite color?', [
      Answers('Black', 10),
      Answers('Red', 9),
      Answers('Green', 8),
      Answers('Blue', 7)
    ]),
    Questions('What is your favourite animal?', [
      Answers('Lion', 10),
      Answers('Tiger', 9),
      Answers('Horse', 8),
      Answers('Rabbit', 7)
    ])
  ];

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }

  void _solution(int score) {
    _totalScore += score;
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Trait App'),
        ),
        body: _index < _questionsList.length
            ? Column(
                children: <Widget>[
                  Quiz(
                      selectSolution: _solution,
                      questionsList: _questionsList,
                      index: _index),
                ],
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

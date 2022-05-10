import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _result;
  final VoidCallback _resetQuizHandler;

  const Result(this._result, this._resetQuizHandler, {Key? key}) : super(key: key);

  String get phrase {
    String resultPhrase;

    if (_result <= 14) {
      resultPhrase = 'You are excellent';
    } else if (_result <= 16) {
      resultPhrase = 'You are good';
    } else if (_result <= 18) {
      resultPhrase = 'You are well';
    } else {
      resultPhrase = 'You are bad';
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            phrase,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: _resetQuizHandler,
            child: const Text('Restart Quiz'),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

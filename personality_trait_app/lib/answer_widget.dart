import 'package:flutter/material.dart';
import './answers.dart';

class Answer extends StatelessWidget {
  final VoidCallback _selectHandler;
  final Answers _answer;

  const Answer(this._selectHandler, this._answer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
        child: Text(_answer.answerText),
        onPressed: _selectHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.redAccent,
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}

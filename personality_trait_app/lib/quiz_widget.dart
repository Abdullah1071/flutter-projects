import 'package:flutter/material.dart';
import './questions.dart';
import './question_widget.dart';
import './answer_widget.dart';

class Quiz extends StatelessWidget {
  final void Function(int) selectSolution; // i searched and did this by myself
  final List<Questions> questionsList;
  final int index;

  const Quiz({required this.selectSolution, required this.questionsList, required this.index, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionsList[index].question,
        ),
        ...(questionsList[index].answers).map((answer) {
          return Answer(() => selectSolution(answer.answerScore), answer);
        }).toList(),
      ],
    );
  }
}

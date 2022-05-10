import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  const Question(this._question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        _question,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

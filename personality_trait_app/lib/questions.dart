import './answers.dart';

class Questions{
  final String _question;
  final List<Answers> _answers;

  Questions(this._question, this._answers);

  List get answers => _answers;
  String get question => _question;
}
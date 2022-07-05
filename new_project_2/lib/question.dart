import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // Position argument.

  Question(this.questionText); // Constructor

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // Position argument.

  Question(this.questionText); // Constructor

  @override
  Widget build(BuildContext context) {
    return Container( // Container is a widget. 
      width: double.infinity, // it takes the full width of the screen.
      margin: EdgeInsets.all(10), // It takes the margin of the container.
      child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    )
    );
  }
}

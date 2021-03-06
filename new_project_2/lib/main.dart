// Imports the package required to run it with the fluttrer app.
import 'dart:io';
import 'package:flutter/material.dart';

import './question.dart'; // Importing the question.dart file.
import './answer.dart'; // Importing the answer.dart file.

void main() {
  // Run app is a function which does all the heavu lifting, it takes a widget and draws it onto the screen.
  // It calls the build method.
  runApp(
      MyApp()); // Creating an object of MyApp class and then pass it on to flutter.
}
// Shorthand for any function with one expression.
//void main() => runApp(MyApp())

// Responsible for returning a new widget to draw on the screen.
class MyApp extends StatefulWidget {
  // Can't have state.

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    //throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  // State is a class.
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // Is a function or method. Which is provided by the state class, it takes a function and runs it.
      // It forces flutter to re-render the widget.
      // Without set state, the widget does change its property but it will not be reflected on the screen.
      _questionIndex = _questionIndex + 1;
    });
    // questionIndex = questionIndex + 1;
    // Changed the state of the widget. After we select answer, the questionIndex is incremented. And the question is changed.
    print(_questionIndex);
  }

  @override // Decorator provided by dart. It is just there to make the code cleaner and clearer.
  Widget build(BuildContext context) {
    // question here now has to become a bit more complex because now a question should not just be a string, the question itself,
    // It should also contain information about the available answers.
    // We could create a new class which has all these features we need and use that class to create objects
    var questions = [
      // We create a map with curly braces, which is a collection of key value pairs. like a dictionary in python.
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Red', 'Blue', 'Green']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        // Provided by flutter, we pass appBar and a Body to it.
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
                //All the questions, I'm accessing the question with index 0, 1, 2 and so on and then here for the chosen question map,
                // I access the value with the key, questionText. So that means I access this value, this value or this value and
                // it's this string which then gets forwarded to the question,
                questions[_questionIndex]
                    ['questionText'] // Accessing the question text using map.
                ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) { // This is an anonymous function. answer is every key in the list for the selected question
              return Answer(_answerQuestion, answer); // Creating a new answer widget, and forwarding the answer text to it.
            }).toList()
          ],
        ), // Column() takes a list of widgets. If we want it in the same row, we can use Row()
      ),
    );
  }
}

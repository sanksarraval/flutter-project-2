// Imports the package required to run it with the fluttrer app.
import 'package:flutter/material.dart';

void main() {
  // Run app is a function which does all the heavu lifting, it takes a widget and draws it onto the screen.
  // It calls the build method.
  runApp(
      MyApp()); // Creating an object of MyApp class and then pass it on to flutter.
}
// Shorthand for any function with one expression.
//void main() => runApp(MyApp())

// Responsible for returning a new widget to draw on the screen.
class MyApp extends StatelessWidget {

  var questionIndex = 0;

  void answerQuestion(){
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override // Decorator provided by dart. It is just there to make the code cleaner and clearer.
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        // Provided by flutter, we pass appBar and a Body to it.
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion, //onPresses: It takes a function. 
                                         //We remove the paranthesis to the function because we want to pass a pointer to the funtion
                                         // not the function itself.
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'), // Using anonymous functions
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed:() => print('Answer 3 chosen'),
            ),
          ],
        ), // Column() takes a list of widgets. If we want it in the same row, we can use Row()
      ),
    );
  }
}

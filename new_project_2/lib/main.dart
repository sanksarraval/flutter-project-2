// Imports the package required to run it with the fluttrer app.
import 'package:flutter/material.dart';
void main()
{
  // Run app is a function which does all the heavu lifting, it takes a widget and draws it onto the screen.
  // It calls the build method.
  runApp(MyApp()); // Creating an object of MyApp class and then pass it on to flutter.
}
// Shorthand for any function with one expression.
//void main() => runApp(MyApp())

// Responsible for returning a new widget to draw on the screen.
class MyApp extends StatelessWidget {
  @override // Decorator provided by dart. It is just there to make the code cleaner and clearer.
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello!'),);
  }
}
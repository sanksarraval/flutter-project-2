import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; // add a property here, a final property, the type now is function which is built into Dart and as the name suggests,
                                // this means that the values stored in this property has to be a function or a pointer to a function to be precise

  Answer(this.selectHandler); //

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //margin: EdgeInsets.all(10),
      color: Colors.blue,
      child: RaisedButton(
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
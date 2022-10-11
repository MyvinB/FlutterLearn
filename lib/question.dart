import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // top add mutability to a stateless object
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(40),
        child: Text('Fact ${this.questionText}',
            style: TextStyle(fontSize: 23), textAlign: TextAlign.center));
  }
}

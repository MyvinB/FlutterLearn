import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback factHandler;
  final String answer;
  Answer(this.answer, this.factHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(150, 0, 150, 0),
      child: ElevatedButton(
          child: Text(this.answer),
          onPressed: this.factHandler,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple)),
    );
  }
}

import 'package:flutter/material.dart';

class Fact extends StatelessWidget {
  final String factText; // top add mutability to a stateless object
  Fact(this.factText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(40),
        child: Text('Fact ${this.factText}',
            style: TextStyle(fontSize: 23), textAlign: TextAlign.center));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Flutter is about widgets
//Widget is a special type of object
// variables are called properties
// finctions are called methods
//Named arguments just optional just easy you can also decide not to pass anything
// // @required annotation and all that crap same as java
//Person({this.name,this.age = 30})

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Myvin Home Page'),
    );
  }
}

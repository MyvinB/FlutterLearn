import 'package:flutter/material.dart';
import './fact.dart';
import './answer.dart';

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

///Every widget in flutter uses StatelessWidget and StateWidget
//Use of runApp it calls the run build method think of thread.start similar stuff in java
/// We should have the function that is inside the class for modularity it should not be outside

//Understanding state
// A stateless widget has no state
// A stateFul widget internal has state but needs a state object

// in dart private fields are noted by _MyApp for that file in a class
//similar for private provery _idx
//every file in a lib folder is its own library
// concept of pr

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  const listfacts = [
    'Myvin is learning Dart',
    'Bindu is learning Dart',
    'We both are cool'
  ];
  var qsIdx = 0;

  void getFacts(int idx) {
    print("Yo Are you being called mate");
    setState(() {
      qsIdx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Learning Flutter')),
        body: Column(
          children: [
            Fact(listfacts[qsIdx]),
            Answer('Fact 1', () => getFacts(0)),
            Answer('Fact 2', () => getFacts(1)),
            Answer('Fact 3', () => getFacts(2))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:first_app/quiz.dart';

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
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Panda', 'Monkey', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Striver', 'Avice', 'Vinay', 'Rahul'],
    },
    {
      'questionText': 'Who\'s your favorite Rapper?',
      'answers': ['Whiz Khalifa', 'Eminem', 'Drake', 'Lil Wayne'],
    }
  ];

  var qsIdx = 0;

  void nextQuestion() {
    print("Yo Are you being called mate");
    if (qsIdx < questions.length - 1) {
      setState(() {
        qsIdx = qsIdx + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Learning Flutter')),
        body: qsIdx < questions.length - 1
            ? Quiz(
                questions: questions, nextQuestion: nextQuestion, qsIdx: qsIdx)
            : Center(child: Text(' You are done mate')),
      ),
    );
  }
}

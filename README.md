# first_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

A simple understanding of flutter and my notes to it

 Flutter is about widgets
Widget is a special type of object
variables are called properties
finctions are called methods
Named arguments just optional just easy you can also decide not to pass anything
@required annotation and all that  same as java
Person({this.name,this.age = 30})

Every widget in flutter uses StatelessWidget and StateWidget 
Use of runApp it calls the run build method think of thread.start 

Text() --> Simple Text
Scaffold() --> Further contains basic tree as syling and contains further stuff 

Different Types of Widget 
 Visible Types of Widget -->> RaisedButton(),Text(),Card();
 Invisible Types of Widgets --> Helps in structuring content and control how visible widgets are drawn into the screen 
 Row(),Column(), ListView()

 Container() it is a visible and invisible widget 

 Lifting the state up 

 final vs const 
 const compile time const 
 final run time constant 

 only static fields can be declared as const

import 'package:flutter/material.dart';  //import flutter's material design library
// Entry point of the app
void main() {
  runApp(MyApp());
}
// MyApp- Root widget of the app
class MyApp extends StatelessWidget {
  @override
  //call build to create widget tree
  //BuildContext provides info about where this widget placed in the widget tree
  Widget build(BuildContext context) {

    //MaterialApp wraps whole app in Google material design theme
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Scaffold provide basic screen structure (AppBar,body,FloatingActionButton,etc)
      home: Scaffold(
        //AppBar Top navigation bar
        appBar: AppBar(
          title: Text('My First Flutter App'),
        ),
        //body Main content of the screen - Center it's child widget in mid
        body: Center(
          child: Text(
            'Hello, world!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

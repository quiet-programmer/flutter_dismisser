import 'package:flutter/material.dart';
import 'package:swipe_to_delete/screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Swipe Dismiss",
      home: Home(),
    );
  }
}
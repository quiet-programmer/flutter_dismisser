import 'package:flutter/material.dart';
import 'package:swipe_to_delete/widgets/snack_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> items = List<String>.generate(30, (i) => "items ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe Dismiss"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (_, index) {
            return SnackWidget(index: index, items: items,);
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SnackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SnackBar(
          content: Text("Working Snack Bar"),
        ),
      );
  }
}
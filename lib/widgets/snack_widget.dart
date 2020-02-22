import 'package:flutter/material.dart';

class SnackWidget extends StatelessWidget {
  final int index;
  final List items;

  SnackWidget({this.index, this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Dismissible(
        key: Key(items[index]),
        direction: DismissDirection.startToEnd,
        background: Container(
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        onDismissed: (direction) {
          items.removeAt(index);
          Scaffold.of(context).showSnackBar(new SnackBar(
            content: Text("Deleted"),
          ));
        },
        child: ListTile(
          title: Text("${items[index]}"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _snackBarShow() {
    final snackBar = SnackBar(
      content: Text("Item Deleted"),
      action: SnackBarAction(
        label: "Deleted",
        onPressed: () {
          Navigator.pop(context, true);
        },
      ),
    );
    return snackBar;
  }

  List<String> _items = List<String>.generate(30, (i) => "items ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe Dismiss"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (_, index) {
            return Dismissible(
              key: Key(_items[index]),
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
                _items.removeAt(index);
                Scaffold.of(context).showSnackBar(_snackBarShow());
              },
              child: ListTile(
                title: Text("${_items[index]}"),
              ),
            );
          },
        ),
      ),
    );
  }
}

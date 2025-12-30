import 'package:flutter/material.dart';

class ListViewBUilderWidget extends StatefulWidget {
  ListViewBUilderWidget({super.key});

  @override
  State<ListViewBUilderWidget> createState() => _ListViewBUilderWidgetState();
}

class _ListViewBUilderWidgetState extends State<ListViewBUilderWidget> {
  Map<String, Color> myfruits = {
    "apple": Colors.redAccent,
    "banana": Colors.redAccent.shade100,
    "mango": Colors.orange.shade100,
    "cherry": Colors.green,
    "kivy": Colors.orange,
    "orange": Colors.grey,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Text("${myfruits.keys.toList()[index]}"),
            );
          },
          separatorBuilder: (context, position) {
            return Divider(
              thickness: 0.2,
              color: Colors.grey,
            );
          },
          itemCount: myfruits.length),
    );
  }
}

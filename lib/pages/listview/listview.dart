import 'package:flutter/material.dart';

class ListviewWidget extends StatefulWidget {
  ListviewWidget({super.key});

  @override
  State<ListviewWidget> createState() => _ListviewWidgetState();
}

class _ListviewWidgetState extends State<ListviewWidget> {
  List<String> fruits = [
    "apple",
    "banana",
    "mango",
    "cherry",
    "kivy",
    "orange",
  ];
  List<Color> colors = [
    Colors.redAccent,
    Colors.redAccent.shade100,
    Colors.orange.shade100,
    Colors.green,
    Colors.orange,
    Colors.grey,
  ];
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
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            height: 150,
            color: colors[index],
            child: Text('${myfruits.keys.toList()[index]}'),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class GridviewCustomWidget extends StatefulWidget {
  GridviewCustomWidget({super.key});

  @override
  State<GridviewCustomWidget> createState() => _GridviewCustomWidgetState();
}

class _GridviewCustomWidgetState extends State<GridviewCustomWidget> {
  List<String> fruits = [
    "apple",
    "banana",
    "mango",
    "cherry",
    "kivy",
    "orange"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate([
            Container(child: Text("${fruits}")),
          ])),
    );
  }
}

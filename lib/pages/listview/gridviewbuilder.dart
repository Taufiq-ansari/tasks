import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  GridViewBuilderWidget({super.key});

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
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              child: Text("${fruits[index]}"),
            );
          }),
    );
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});

  List<String> fruits = [
    "apple",
    "banana",
    "mango",
    "cherry",
    "kivy",
    "orange",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisSpacing: 5,
        crossAxisCount: 2,
        children: fruits.map((e) {
          return Container(
            alignment: Alignment.center,
            child: Text("${e}"),
          );
        }).toList(),
      ),
    );
  }
}

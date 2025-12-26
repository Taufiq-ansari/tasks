import 'package:flutter/material.dart';

class MultipleWidgets extends StatelessWidget {
  const MultipleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Transform.rotate(
      angle: -0.7,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.amber,
          child: Center(child: Transform.rotate(angle: 0, child: Text("data"))),
        ),
      ),
    ));
  }
}

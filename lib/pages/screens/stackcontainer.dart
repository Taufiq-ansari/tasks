import 'package:flutter/material.dart';

class StackContainerScreen extends StatelessWidget {
  const StackContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.grey,
              child: Text("1"),
            ),
          ),
          Center(
            child: Container(
              height: 150,
              width: 150,
              color: Colors.grey[400],
              child: Text("2"),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.grey[300],
              child: Text("3"),
            ),
          )
        ],
      ),
    );
  }
}

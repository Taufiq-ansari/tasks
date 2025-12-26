import 'package:flutter/material.dart';

class StackWithPosition extends StatelessWidget {
  const StackWithPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 200,
            color: Colors.amber[100],
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:api/pages/api_projects/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text("welcome"),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
              },
              child: Text("button"),
            ),
          ),
        ],
      ),
    );
  }
}

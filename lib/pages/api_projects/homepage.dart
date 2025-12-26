import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 217, 207),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

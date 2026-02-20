import 'package:flutter/material.dart';

class FirebaseScreen extends StatelessWidget {
  const FirebaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(child: Text("firebase logged in")),
            ],
          ),
        ],
      ),
    );
  }
}

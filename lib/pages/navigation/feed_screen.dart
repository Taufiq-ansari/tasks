import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  FeedScreen({required this.data});

  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          // pop navigation...
          onTap: () {
            print("pressed");
            // Navigator.pop(context);
          },
          child: Container(
            height: 70,
            width: 180,
            color: Colors.amber[200],
            child: Center(
              child: Text("$data"), //receive pass with ongenerated
            ),
          ),
        ),
      ),
    );
  }
}

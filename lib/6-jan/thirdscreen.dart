import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  Color newColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    print("build method called");
    return Scaffold(
      backgroundColor: newColor,
      appBar: AppBar(
        backgroundColor: newColor,
        title: Text(
          "Third screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Center(
          child: Text(
            "homepage3",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).splashColor,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.pop(context, newColor);
          setState(() {});
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}

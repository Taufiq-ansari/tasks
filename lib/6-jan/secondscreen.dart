import 'package:api/6-jan/thirdscreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() =>
      _SecondScreenState(); // 1.-- create state
}

class _SecondScreenState extends State<SecondScreen> {
  Color page2 = Colors.blue;
  @override
  Widget build(BuildContext context) {
    print("build method called");
    return Scaffold(
      backgroundColor: page2,
      appBar: AppBar(
        backgroundColor: page2,
        title: Text(
          "Second screen",
          style: TextStyle(color: const Color.fromARGB(255, 95, 116, 133)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "homepage2",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).primaryColor),
          ),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).splashColor,
        shape: CircleBorder(),
        onPressed: () async {
          final currentColor = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdScreen()),
          );
          setState(() {
            page2 = currentColor;
          });
        },
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}

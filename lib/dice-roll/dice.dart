import 'dart:math';

import 'package:flutter/material.dart';

class DiceRollScreen extends StatefulWidget {
  const DiceRollScreen({super.key});

  @override
  State<DiceRollScreen> createState() => _DiceRollScreenState();
}

class _DiceRollScreenState extends State<DiceRollScreen> {
  int dice1 = 1;
  int dice2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("DICE-ROLL"),
      ),
      backgroundColor: Colors.amber[100],
      body: Column(
        spacing: 20.0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            spacing: 20.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 152, 135, 135),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    "$dice1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 240, 233),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    "$dice2",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: const Color.fromARGB(255, 141, 127, 127),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "${dice1 + dice2}",
            style: TextStyle(fontSize: 40.0, color: Colors.black45),
          ),
          ElevatedButton(
            onPressed: () {
              dice1 = Random().nextInt(6) + 1;
              dice2 = Random().nextInt(6) + 1;

              print("currently not working ${dice1 + dice2}");
              setState(() {});
            },
            child: Text("roll"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyStapperScreen extends StatefulWidget {
  const MyStapperScreen({super.key});

  @override
  State<MyStapperScreen> createState() => _MyStapperScreenState();
}

class _MyStapperScreenState extends State<MyStapperScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: Stepper(
        currentStep: currentIndex,
        // type: StepperType.horizontal,
        onStepTapped: (value) {
          currentIndex = value;
          setState(() {});
        },
        onStepContinue: () {
          if (currentIndex < 0) {
            currentIndex += 1;
            setState(() {});
          }
        },
        onStepCancel: () {
          if (currentIndex == 0) {
            return;
          }

          if (currentIndex > 0) {
            currentIndex -= 1;
          }
          setState(() {});
        },
        steps: <Step>[
          Step(
            title: Text(
              "account",
              style: TextStyle(color: Colors.black),
            ),
            content: Text("Account", style: TextStyle(color: Colors.black)),
          ),
          Step(
            title: Text(
              "details",
              style: TextStyle(color: Colors.black),
            ),
            content: Text("Detail", style: TextStyle(color: Colors.black)),
          ),
          Step(
            title: Text(
              "confirm",
              style: TextStyle(color: Colors.black),
            ),
            content: Text("Confirm", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}

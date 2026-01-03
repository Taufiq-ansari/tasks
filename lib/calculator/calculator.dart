import 'package:api/calculator/customButton.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController _textController = TextEditingController();

  String input = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 40,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // total calculated number displayed
          Text("dispplay no: ${input}"),
          // textfield for user input
          TextField(
            controller: _textController,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              decorationThickness: 2.0,
            ),
            textDirection: TextDirection.rtl,
            cursorHeight: 35.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextButton(
                onpressed: () {
                  setState(() {
                    print("c pressed");
                  });
                },
                labelText: "C",
                textColor: Colors.black,
              ),
              CustomTextButton(
                onpressed: () {},
                labelText: "+/-",
                textColor: Colors.black,
              ),
              CustomTextButton(
                onpressed: () {},
                labelText: "%",
                textColor: Colors.black,
              ),
              CustomTextButton(
                onpressed: () {},
                labelText: "/",
                textColor: Colors.redAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextButton(
                  onpressed: () {}, labelText: "7", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {}, labelText: "8", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {}, labelText: "9", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {},
                  labelText: "x",
                  textColor: Colors.redAccent),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextButton(
                  onpressed: () {}, labelText: "4", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {}, labelText: "5", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {}, labelText: "6", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {},
                  labelText: "-",
                  textColor: Colors.redAccent),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextButton(
                  onpressed: () {}, labelText: "1", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {}, labelText: "2", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {}, labelText: "3", textColor: Colors.black),
              CustomTextButton(
                onpressed: () {
                  int a = 0;
                  int b = 2;
                  input = a.toString() + b.toString();
                  print(input);
                  setState(() {});
                },
                labelText: "+",
                textColor: Colors.redAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextButton(
                  onpressed: () {}, labelText: "00", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {}, labelText: "0", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {}, labelText: ".", textColor: Colors.black),
              CustomTextButton(
                  onpressed: () {},
                  labelText: "=",
                  textColor: Colors.redAccent),
            ],
          ),
        ],
      ),
    );
  }
}

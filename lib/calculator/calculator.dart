import 'package:api/calculator/customButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // userinput
  String input = "";
  // this variable for total
  String answer = "";

  onEqual() {
    String userinput = input.replaceAll("x", "*");
    Parser perser = Parser();
    Expression expression = perser.parse(userinput);
    ContextModel contextmodel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextmodel);
    answer = eval.toString();

    print(eval);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '$input\n  $answer',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              indent: 20.0,
              endIndent: 20.0,
            ),
            Expanded(
              child: Column(
                spacing: 30,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // total calculated number displayed

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextButton(
                        onpressed: () {
                          input = "";
                          answer = "";
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
                        onpressed: () {
                          input += "%";
                          setState(() {});
                        },
                        labelText: "%",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "/";
                          setState(() {});
                        },
                        labelText: "/",
                        textColor: Colors.redAccent,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextButton(
                        onpressed: () {
                          input += "7";

                          setState(() {});
                        },
                        labelText: "7",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "8";
                          setState(() {});
                        },
                        labelText: "8",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "9";
                          setState(() {});
                        },
                        labelText: "9",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "x";
                          setState(() {});
                        },
                        labelText: "x",
                        textColor: Colors.redAccent,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextButton(
                        onpressed: () {
                          input += "4";
                          setState(() {});
                        },
                        labelText: "4",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "5";
                          setState(() {});
                        },
                        labelText: "5",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "6";
                          setState(() {});
                        },
                        labelText: "6",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {},
                        labelText: "-",
                        textColor: Colors.redAccent,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextButton(
                        onpressed: () {
                          input += "1";
                          setState(() {});
                        },
                        labelText: "1",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "2";
                          setState(() {});
                        },
                        labelText: "2",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "3";
                          setState(() {});
                        },
                        labelText: "3",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "+";

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
                        onpressed: () {
                          input += "00";
                          setState(() {});
                        },
                        labelText: "00",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "0";
                          setState(() {});
                        },
                        labelText: "0",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input = ".";
                          setState(() {});
                        },
                        labelText: ".",
                        textColor: Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          onEqual();
                          setState(() {});
                        },
                        labelText: "=",
                        textColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:api/calculator/customButton.dart';
import 'package:api/pages/themechange.dart/themeclass.dart';
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
  // this variable for total calculation
  String answer = "";

  bool isDark = true;

//  when user click on euqal button
  onEqual() {
    String userinput = input.replaceAll("x", "*");
    Parser perser = Parser();
    Expression expression = perser.parse(userinput);
    ContextModel contextmodel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextmodel);
    answer = eval.toInt().toString();
//  show  output in terminal
    print(answer);
  }

// making fuctions for a operator
  bool isOperatorAdded() {
    if (input.isEmpty) {
      return false;
    }
    return !RegExp(r'[/+\-x]$').hasMatch(input);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$input",
                    style: TextStyle(fontFamily: "MyFonts", fontSize: 20),
                  ),
                  Text(
                    "$answer",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 10.0,
              endIndent: 10.0,
            ),
            Expanded(
              child: Column(
                spacing: 20,
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
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {},
                        labelText: "+/-",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          if (isOperatorAdded()) {
                            input += "%";
                          }
                          setState(() {});
                        },
                        labelText: "%",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          if (isOperatorAdded()) {
                            input += "/";
                          }
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
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "8";
                          setState(() {});
                        },
                        labelText: "8",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "9";
                          setState(() {});
                        },
                        labelText: "9",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          if (isOperatorAdded()) {
                            input += "x";
                          }
                          !RegExp(r'[/+\-x]$').hasMatch(input);
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
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "5";
                          setState(() {});
                        },
                        labelText: "5",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "6";
                          setState(() {});
                        },
                        labelText: "6",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          if (isOperatorAdded()) {
                            input += "-";
                          }
                          setState(() {});
                        },
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
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "2";
                          setState(() {});
                        },
                        labelText: "2",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "3";
                          setState(() {});
                        },
                        labelText: "3",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          if (isOperatorAdded()) {
                            input += "+";
                          }

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
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input += "0";
                          setState(() {});
                        },
                        labelText: "0",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
                      ),
                      CustomTextButton(
                        onpressed: () {
                          input = ".";
                          setState(() {});
                        },
                        labelText: ".",
                        textColor: isDark
                            ? Themes.darktheme.primaryColor
                            : Colors.black,
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

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatefulWidget {
  BmiCalculatorScreen({super.key});

  @override
  State<BmiCalculatorScreen> createState() => _BmiCalculatorScreenState();
}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen> {
  double heightcm = 180;

  int weight = 30;

  int age = 25;
  double display = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 5.0,
      ),
      backgroundColor: Colors.black,
      body: Column(
        spacing: 20.0,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 50,
              children: [
                Container(
                  height: 180,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 35, 38, 54),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.white,
                          size: 130,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 35, 38, 54),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        color: Colors.white,
                        size: 140,
                      ),
                      Text(
                        "FEMALE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20.0),
            height: 130,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 35, 38, 54),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  //height text

                  Text(
                    "Height $display",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  // text cm
                  Text(
                    "${heightcm} cm",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  // slider
                  Slider(
                    value: heightcm.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (value) {
                      setState(() {
                        heightcm = double.parse(value.toStringAsFixed(1));
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              Container(
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 35, 38, 54),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "weight".toUpperCase(),
                        style: TextStyle(color: Colors.white38, fontSize: 14),
                      ),
                      Text(
                        "${weight}",
                        style: TextStyle(color: Colors.white, fontSize: 34),
                      ),
                      Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                              shadowColor: WidgetStatePropertyAll(Colors.black),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white54),
                            ),
                            onPressed: () {
                              setState(() {
                                if (weight > 1) {
                                  weight--;
                                }
                              });
                            },
                            icon: Icon(
                              CupertinoIcons.minus,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white54),
                            ),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 35, 38, 54),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(color: Colors.white38, fontSize: 14),
                      ),
                      Text(
                        "$age",
                        style: TextStyle(color: Colors.white, fontSize: 34),
                      ),
                      Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                              shadowColor: WidgetStatePropertyAll(Colors.black),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white54),
                            ),
                            onPressed: () {
                              setState(() {
                                if (age > 1) {
                                  age--;
                                }
                              });
                            },
                            icon: Icon(
                              CupertinoIcons.minus,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white54),
                            ),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          // TextButton.(
          //     style: ButtonStyle(
          //         backgroundColor: WidgetStatePropertyAll(Colors.redAccent)),
          //     onPressed: () {},
          //     child: Text("CALCULATE"))
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 240, 3, 78),
              ),
              onPressed: () {
                // BMI formula: weight (kg) / (height (m) * height (m))

                display = weight / pow(heightcm / 100, 2);
                print("bmi:$display kg/m2");
                setState(() {});

                // heightcm/100
              },
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

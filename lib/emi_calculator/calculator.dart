import 'dart:math';

import 'package:flutter/material.dart';

class EmiCalculator extends StatefulWidget {
  EmiCalculator({super.key});

  @override
  State<EmiCalculator> createState() => _EmiCalculatorState();
}

class _EmiCalculatorState extends State<EmiCalculator> {
  String emiCalculator = "EMI CALCULATOR";

// principle amount
  double loanAmount = 50000;

// for interest rate
  double rate = 12;

// loanTenure
  int year = 5;
  int? remaning;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(emiCalculator),
      //   leading: Icon(Icons.menu),
      // ),
      body: Stack(
        children: [
          Column(
            children: [
              //  container for header
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 8.0,
                      offset: Offset.zero,
                    ),
                  ],
                  color: const Color.fromARGB(255, 59, 14, 138),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                      child: Row(
                        spacing: 80,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // icons
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),

                          //  text emi calculator
                          Text(
                            emiCalculator,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      "Your loan EMI is",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    // Text(
                    //   " ₹20,000",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 34.0,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "₹ ",
                            style:
                                TextStyle(fontSize: 26.0, color: Colors.white),
                          ),
                          TextSpan(
                            text: "${remaning}",
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "per month",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 250,
            left: 10,
            right: 10,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(
                  255,
                  230,
                  233,
                  235,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 6.0),
                child: Column(
                  // spacing: 50,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //slider for loan amount
                    Text(
                      "${loanAmount}",
                      style: TextStyle(fontFamily: "MyFonts", fontSize: 18.0),
                    ),
                    Divider(
                      height: 0.1,
                      indent: 290,
                      // endIndent: 10.0,
                    ),
                    Slider(
                      showValueIndicator: ShowValueIndicator.onDrag,
                      value: loanAmount.toDouble(),
                      label: "${loanAmount}",
                      min: 5000,
                      max: 100000,
                      onChanged: (val) {
                        loanAmount = double.parse(val.toStringAsFixed(0));
                        setState(() {
                          print("pressed");
                        });
                      },
                      // label: "2000",
                    ),
                    Text(
                      "${rate}%",
                      style: TextStyle(fontFamily: "MyFonts", fontSize: 18.0),
                    ),
                    Divider(
                      height: 0.1,
                      indent: 310,
                      // endIndent: 10.0,
                    ),

                    // slider for interest rate
                    Slider(
                      label: "${rate}",
                      showValueIndicator: ShowValueIndicator.onDrag,
                      value: rate,
                      min: 7,
                      max: 36,
                      onChanged: (val) {
                        rate = double.parse(val.toStringAsFixed(0));

                        print(rate);
                        setState(() {});
                      },
                    ),
                    Text(
                      "${year} years",
                      style: TextStyle(fontFamily: "MyFonts", fontSize: 18.0),
                    ),
                    Divider(
                      height: 0.1,
                      indent: 290,
                      // endIndent: 10.0,
                    ),

                    // slider for loan tenure
                    Slider(
                      value: year.toDouble(),
                      min: 2,
                      max: 20,
                      onChanged: (val) {
                        year = val.toInt();

                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                              Color.fromARGB(255, 59, 14, 138),
                            ),
                          ),
                          onPressed: () {
                            // int interestRate =
                            //     (loanAmount * rate * year) ~/ 100;
                            // remaning = interestRate.toInt();

                            // [P x R x (1+R) ^N]/ [(1+R) ^ (N-1)]

                            double monthlyRate = (rate / 12) / 100;

                            int tenure = year * 12;

                            double interestRate = loanAmount *
                                monthlyRate *
                                (1 + monthlyRate) *
                                pow((1 + monthlyRate), tenure) /
                                (pow((1 + monthlyRate), tenure - 1));

                            remaning = interestRate.toInt();

                            // double interestRate = loanAmount *
                            //     monthlyRate *
                            //     (1 +monthlyRate) *
                            //     pow(year, 1) /
                            //     (1 +monthlyRate) *
                            //     pow(1,monthlyRate)-1);
                            // remaning = interestRate.toInt();

                            print(
                              " calculate of EMI ${remaning} ",
                            );
                            setState(() {});
                          },
                          child: Text(
                            "Calculator",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}







// EMI = [P x R x (1+R) ^N]/ [(1+R) ^ (N-1)], where –
// P is the principal amount.
// R is the rate of interest.
// N is the loan tenure.

// rate 
// anualinterest /12/100

// interest formula
// PxRxT/100
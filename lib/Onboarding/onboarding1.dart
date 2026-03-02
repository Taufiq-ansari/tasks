import 'package:api/Onboarding/onboarding2.dart';
import 'package:api/pages/todohomepage.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // scroll  container

              // text skip...

              Padding(
                padding: const EdgeInsets.only(right: 20.0, top: 70),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ToDoHomepage(),
                      ),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(),
                  ),
                ),
              ),
            ],
          ),

          // Text("OnBoarding"),

          //  center image
          Image.asset("assets/images/Building-pana.png"),
          // Image.network("assets/images/Building-pana.png"),

          //  text
          Text(
            """Welcome to TaskFlow
          Organize your day, focus on what matters,\n and get things done effortlessly""",
            textAlign: TextAlign.center,
          ),
          // button for continue...

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.pink[50],
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnBoardingScreen2(),
                  ),
                );
              },
              child: Text(
                "Continue",
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

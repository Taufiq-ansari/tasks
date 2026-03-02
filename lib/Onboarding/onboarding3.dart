import 'package:api/pages/navigation/home.dart';
import 'package:api/pages/todohomepage.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({super.key});

  @override
  State<OnBoardingScreen3> createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
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

              // Padding(
              //   padding: const EdgeInsets.only(right: 20.0, top: 70),
              //   child: Text(
              //     "Skip",
              //     style: TextStyle(),
              //   ),
              // ),
            ],
          ),

          // Text("OnBoarding"),s

          //  center image
          Image.asset("assets/images/Navigation-pana.png"),
          // Image.network("assets/images/Building-pana.png"),

          //  text
          Text(
            "Rest on the bestie & go to the destiny",
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ToDoHomepage(),
                  ),
                );
              },
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

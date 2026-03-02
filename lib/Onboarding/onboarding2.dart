import 'package:api/Onboarding/onboarding3.dart';
import 'package:api/pages/todohomepage.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({super.key});

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: GestureDetector(
        onHorizontalDragStart: (details) {
          Navigator.pop(
            context,
            // MaterialPageRoute(
            //   builder: (context) => OnBoardingScreen1(),
            // ),
          );
        },
        child: Column(
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
            Image.asset("assets/images/City driver-pana.png"),
            // Image.network("assets/images/Building-pana.png"),

            //  text
            Text(
              """Create tasks, set priorities, and \nmanage everything in one place.""",
              textAlign: TextAlign.center,
            ),
            // button for continue...

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.green[50],
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OnBoardingScreen3(),
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
      ),
    );
  }
}

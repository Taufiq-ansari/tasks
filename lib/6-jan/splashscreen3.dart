import 'dart:async';
import 'package:api/6-jan/firstscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  //  to implement duration in splash screen have to add duration

  // timer function implements

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () async {
      print("timer working");

      //navigate to home page
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FirstScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          // for gradient colors
          gradient: LinearGradient(
            colors: [Colors.white, Colors.blue],
          ),
        ),
        child: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Home",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 112, 181, 230),
                  ),
                ),
                TextSpan(
                  text: "page",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:api/pages/listview/employeesdata.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () async {
      print("timer working");
// navigate to EmployeesWidget

      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => EmployeesWidget(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.white]),
        ),
        child: Text(
          "Splash Screen",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: "MyFonts",
          ),
        ),
      ),
    );
  }
}

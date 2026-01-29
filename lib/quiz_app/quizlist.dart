import 'package:flutter/material.dart';

class MyQuizAppScreen extends StatefulWidget {
  const MyQuizAppScreen({super.key});

  @override
  State<MyQuizAppScreen> createState() => _MyQuizAppScreenState();
}

class _MyQuizAppScreenState extends State<MyQuizAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QUIZ-APP",
          style: TextStyle(fontFamily: "MyFonts"),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 241, 239, 239),
                borderRadius: BorderRadius.all(Radius.elliptical(23, 23))),
            child: Center(
              child: Text(
                "quiz-App",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          SizedBox(
            height: 170,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(260, 50),
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(),
            ),
            child: Text(
              "True",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "MyFonts",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(260, 50),
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(),
            ),
            child: Text(
              "False",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "MyFonts",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

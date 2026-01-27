// ignore_for_file: require_trailing_commas

import 'package:api/23_27jan/pageview/drawer.dart';
import 'package:api/23_27jan/pageview/mybottomnavigation.dart';
import 'package:flutter/material.dart';

class MyPageViewScreen extends StatefulWidget {
  MyPageViewScreen({super.key});

  @override
  State<MyPageViewScreen> createState() => _MyPageViewScreenState();
}

class _MyPageViewScreenState extends State<MyPageViewScreen> {
  int MyCurrentIndex = 0;

  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Pageview",
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "MyFonts"),
        ),
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: (value) {
          MyCurrentIndex = value;
          // setState(() {});
        },
        children: <Widget>[
          Column(
            children: [
              // image
              Image.network(
                "https://t4.ftcdn.net/jpg/05/71/37/35/360_F_571373556_olqD06sRgCoKQpiKTn9zo9g5sqNQBx27.jpg",
              ),
              // text
              Text(
                "Quick Stats Overview",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // description
              Text(
                "Success! Your changes have been saved.",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "MyFonts",
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Column(
            children: [
              // image
              Image.network(
                  "https://img.freepik.com/free-vector/hand-drawn-people-with-ideas_23-2149160771.jpg?semt=ais_hybrid&w=740&q=80"),
              // text
              Text(
                "Quick Stats Overview",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // description
              Text(
                "Boost productivity with smart automation ",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "MyFonts",
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Column(
            children: [
              // image
              Image.network(
                  "https://img.freepik.com/photos-premium/illustration-designation-plate-pensee-conception_1106493-514247.jpg?semt=ais_hybrid&w=740&q=80"),
              // text
              Text(
                "Secure, fast, and reliable—your data is safe with us.",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // description
              Text(
                "Success! Your changes have been saved.",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "MyFonts",
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigation(
        myCurrentIndex: MyCurrentIndex,
        onTapChange: (value) {
          MyCurrentIndex = value;
          print("==> pageview change $MyCurrentIndex");
          setState(() {});

          _controller.animateToPage(
            value,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}

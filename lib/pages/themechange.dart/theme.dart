import 'package:api/pages/themechange.dart/themeclass.dart';
import 'package:flutter/material.dart';

class ChangingTheme extends StatefulWidget {
  const ChangingTheme({super.key});

  @override
  State<ChangingTheme> createState() => _ChangingThemeState();
}

class _ChangingThemeState extends State<ChangingTheme> {
  bool isdark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isdark
            ? Color.fromARGB(255, 212, 210, 202)
            : Color.fromARGB(255, 55, 52, 52),
        title: Text(
          "ThemeChanging App",
          style: TextStyle(color: isdark ? Colors.black45 : Colors.white70),
        ),
        actions: [
          // adding  switch for changing on click switch buttom toggle....
          Switch(
            activeColor: Colors.grey,
            value: isdark,
            onChanged: (bool val) {
              isdark = val;
              print(isdark);
              setState(() {});
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          // changing theme by clicking on contianer
          isdark = !isdark;
          // setState(() {});
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isdark
                ? Themes.lightheme.primaryColor
                : Themes.darktheme.primaryColor,
          ),
          child: Text(
            "light theme",
            style: TextStyle(color: isdark ? Colors.black45 : Colors.white70),
          ),
        ),
      ),
    );
  }
}

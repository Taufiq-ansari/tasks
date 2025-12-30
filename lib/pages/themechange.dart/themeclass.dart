import 'package:flutter/material.dart';

class Themes {
  //light theme
  static ThemeData lightheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 212, 210, 202),
  );

// dark theme
  static ThemeData darktheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 55, 52, 52),
  );
}

import 'package:flutter/material.dart';

class MySearchWidget extends StatelessWidget {
  const MySearchWidget({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    required this.color,
  });

  final Icon prefixIcon;
  final String hintText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 230, 230),
          borderRadius: BorderRadius.circular(30)),
      height: 40,
      width: MediaQuery.of(context).size.width / 1.07,
      child: TextField(
        cursorHeight: 20,
        cursorColor: const Color.fromARGB(255, 156, 177, 136),
        style: TextStyle(
          color: Colors.black,
          fontFamily: "MyFonts",
        ),
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          isDense: true,
          border: InputBorder.none,
          prefixIcon: prefixIcon,
          prefixIconColor: color,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 142, 139, 139),
          ),
        ),
      ),
    );
  }
}

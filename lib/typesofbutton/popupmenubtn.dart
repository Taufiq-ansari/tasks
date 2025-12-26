import 'package:flutter/material.dart';

class PopUpMenubtn extends StatefulWidget {
  const PopUpMenubtn({super.key});

  @override
  State<PopUpMenubtn> createState() => _PopUpMenubtnState();
}

class _PopUpMenubtnState extends State<PopUpMenubtn> {
  String initialpopValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("popupbtn"),
        actions: [
          PopupMenuButton(
            onSelected: (val) {
              initialpopValue = val;
              setState(() {});
            },
            borderRadius: BorderRadius.circular(50),
            menuPadding: EdgeInsets.all(10),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("first"),
                  value: "first",
                ),
                PopupMenuItem(
                  child: Text("second"),
                  value: "second",
                ),
                PopupMenuItem(
                  child: Text("third"),
                  value: "third",
                ),
              ];
            },
            initialValue: initialpopValue,
          ),
        ],
      ),
      body: Center(child: Text(" $initialpopValue")),
    );
  }
}

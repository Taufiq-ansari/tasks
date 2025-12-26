import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool checkbox1 = true;
  bool checkbox2 = false;
  bool checkbox3 = true;
  bool checkbox4 = false;
  bool checkbox5 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              CheckboxListTile(
                activeColor: Colors.grey,
                checkColor: const Color.fromARGB(255, 228, 238, 246),
                value: checkbox1,
                title: Text("task1"),
                subtitle: Text("todays work done "),
                secondary: Icon(Icons.emoji_emotions),
                onChanged: (bool? val) {
                  checkbox1 = val!;
                  setState(() {});
                },
              ),
              Divider(),
              CheckboxListTile(
                value: checkbox2,
                title: Text("task2"),
                activeColor: Colors.grey,
                checkColor: const Color.fromARGB(255, 236, 227, 227),
                subtitle: Text(
                  "A dropdown button lets the user select from a number of items. The button shows the currently selected item as well as an arrow that opens a menu for selecting another item.",
                ),
                secondary: Icon(Icons.all_inclusive_rounded),
                onChanged: (bool? value) {
                  checkbox2 = value!;
                  setState(() {});
                },
              ),
              Divider(),
              CheckboxListTile(
                activeColor: Colors.grey,
                checkColor: const Color.fromARGB(255, 228, 238, 246),
                value: checkbox3,
                title: Text("task3"),
                subtitle: Text("explore checkboxlist-tile widgets"),
                secondary: Icon(Icons.account_circle),
                onChanged: (bool? value) {
                  checkbox3 = value!;
                  setState(() {});
                },
              ),
              Divider(),
              CheckboxListTile(
                value: checkbox4,
                title: Text("task4"),
                activeColor: Colors.grey,
                checkColor: Colors.white,
                subtitle: Text(
                  "The selected property on this widget is similar to the ListTile.selected property. This tile's activeColor is used for the selected item's text color, or the theme's CheckboxThemeData.overlayColor if activeColor is null. ",
                ),
                secondary: Icon(Icons.emoji_emotions_outlined),
                onChanged: (value) {
                  checkbox4 = value!;
                  setState(() {});
                },
              ),
              Divider(),
              CheckboxListTile(
                activeColor: Colors.grey,
                checkColor: const Color.fromARGB(255, 228, 238, 246),
                value: checkbox5,
                title: Text("task5"),
                subtitle: Text(
                  "The color for the button's Material when it has the input focus.",
                ),
                enabled: true,
                secondary: Icon(Icons.fiber_smart_record),
                onChanged: (value) {
                  checkbox5 = value!;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

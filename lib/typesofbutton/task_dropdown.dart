import 'package:flutter/material.dart';

//  without initialize value
class DropDownTask extends StatefulWidget {
  const DropDownTask({super.key});

  @override
  State<DropDownTask> createState() => _DropDownTaskState();
}

class _DropDownTaskState extends State<DropDownTask> {
  String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop-Down"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
                value: initialValue,
                // hint: Text("$initialValue"),
                items: [
                  DropdownMenuItem(
                    child: Text(
                      "mobiles games",
                      style: TextStyle(color: Colors.blue),
                    ),
                    value: "pubg",
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "pc-games",
                      style: TextStyle(color: Colors.blue),
                    ),
                    value: " valorant",
                  ),
                  DropdownMenuItem(
                    child: Text(
                      "ps-5",
                      style: TextStyle(color: Colors.blue),
                    ),
                    value: "god-of-war",
                  ),
                ],
                onChanged: (val) {
                  setState(() {
                    initialValue = val;
                  });
                }),
            Text(
              "$initialValue",
              style: TextStyle(color: Colors.grey[600]),
            )
          ],
        ),
      ),
    );
  }
}

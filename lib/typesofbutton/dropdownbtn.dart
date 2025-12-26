import 'package:flutter/material.dart';

class DropDownBtn extends StatefulWidget {
  const DropDownBtn({super.key});

  @override
  State<DropDownBtn> createState() => _DropDownBtnState();
}

class _DropDownBtnState extends State<DropDownBtn> {
  String? initialvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        title: Text("Drop-Down-Button"),
      ),
      body: Center(
        child: Container(
          child: DropdownButton<String>(
            value: initialvalue,
            items: <DropdownMenuItem<String>>[
              DropdownMenuItem(
                child: Text("UAE"),
                value: "uk",
              ),
              DropdownMenuItem(
                child: Text("CHINA"),
                value: "ci",
              ),
              DropdownMenuItem(
                child: Text("USA"),
                value: "us",
              ),
              DropdownMenuItem(
                child: Text("CANADA"),
                value: "ca",
              ),
            ],
            onChanged: (val) {
              initialvalue = val;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}

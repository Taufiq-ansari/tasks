import 'package:flutter/material.dart';

class RadioBtnWidget extends StatefulWidget {
  RadioBtnWidget({super.key});

  @override
  State<RadioBtnWidget> createState() => _RadioBtnWidgetState();
}

class _RadioBtnWidgetState extends State<RadioBtnWidget> {
  String radioval = "gender";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio-Button"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                  value: "male",
                  groupValue: radioval,
                  onChanged: (selected) {
                    radioval = selected!;
                    setState(() {});
                  }),
              Text("male")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                  value: "female",
                  groupValue: radioval,
                  onChanged: (selected) {
                    setState(() {
                      radioval = selected!;
                    });
                  }),
              Text("female"),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TimeScreeen extends StatefulWidget {
  const TimeScreeen({super.key});

  @override
  State<TimeScreeen> createState() => _TimeScreeenState();
}

class _TimeScreeenState extends State<TimeScreeen> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date-Time picker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              selectedTime.format(context).toString(),
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              TimeOfDay? timePicker = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (timePicker == null) {
                return null;
              }
              print("=> time: ${timePicker.format(context)}");
              selectedTime = timePicker;
              setState(() {});
            },
            child: Text(
              "Show time",
            ),
          ),
        ],
      ),
    );
  }
}

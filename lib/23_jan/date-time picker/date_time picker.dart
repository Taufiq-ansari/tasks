import 'package:flutter/material.dart';

class DateTimeScreeen extends StatefulWidget {
  const DateTimeScreeen({super.key});

  @override
  State<DateTimeScreeen> createState() => _DateTimeScreeenState();
}

class _DateTimeScreeenState extends State<DateTimeScreeen> {
  DateTime? selectedDate = DateTime.now();
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
              selectedDate.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              DateTime? _datepicker = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2014),
                lastDate: DateTime(2027),
              );

              if (_datepicker != null) {
                print(
                  "===> date picker ${_datepicker.year}:${_datepicker.month}:${_datepicker.day}",
                );
                selectedDate = _datepicker;
              }
              setState(() {});
            },
            child: Text(
              "Show date",
            ),
          ),
        ],
      ),
    );
  }
}

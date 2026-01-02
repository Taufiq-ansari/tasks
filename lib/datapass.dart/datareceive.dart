import 'package:flutter/material.dart';

class DataReceive extends StatefulWidget {
  DataReceive({required this.receivedData});
  final String receivedData;
  @override
  State<DataReceive> createState() => _DataReceiveState();
}

class _DataReceiveState extends State<DataReceive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Receive "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Data Receive: ${widget.receivedData}",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, "hello its time over");
              setState(() {});
            },
            child: Text("return"),
          ),
        ],
      ),
    );
  }
}

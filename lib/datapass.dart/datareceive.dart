import 'package:flutter/material.dart';

class DataReceive extends StatelessWidget {
  DataReceive({required this.receivedData});

//
//

  final String receivedData;
  //

  //
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
              "Data Receive: $receivedData",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, "hello its time over");

              print('return button working');
            },
            child: Text("return"),
          ),
        ],
      ),
    );
  }
}

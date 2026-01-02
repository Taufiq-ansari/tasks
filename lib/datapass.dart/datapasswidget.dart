import 'package:api/datapass.dart/datareceive.dart';
import 'package:flutter/material.dart';

class DataPassScreen extends StatefulWidget {
  DataPassScreen({super.key});

  @override
  State<DataPassScreen> createState() => _DataPassScreenState();
}

class _DataPassScreenState extends State<DataPassScreen> {
  TextEditingController userInputController = TextEditingController();

// store value
  String changeValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Datapass",
          style: TextStyle(
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            color: Colors.blue,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        spacing: 30.0,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome $changeValue"),
          //  texfield .. user input
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: userInputController,
              decoration: InputDecoration(
                labelText: "Type here",
                hintText: "Enter your name",
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  changeValue = value;

                  print(changeValue);
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DataReceive(receivedData: changeValue),
                  ),
                );
              });
            },
            child: Text(
              "button",
            ),
          ),
        ],
      ),
    );
  }
}

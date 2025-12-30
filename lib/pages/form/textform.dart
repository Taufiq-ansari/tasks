import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormValidationWidget extends StatefulWidget {
  FormValidationWidget({super.key});

  @override
  State<FormValidationWidget> createState() => _FormValidationWidgetState();
}

class _FormValidationWidgetState extends State<FormValidationWidget> {
  // variable
  TextEditingController name_Controller = TextEditingController();

  String u_Name = "";

  @override
  void initState() {
    super.initState();
    setState(() {
      name_Controller.text = "Jerry";
    });
  }

// addlistner function

  void add_nameListner() {
    name_Controller.addListener(() {});
    print("$name_Controller");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
      ),
      body: Column(
        //image

        //text

        // form
        children: [
          Text(" welcome ${name_Controller.text}"),
          // textfield for username
          Column(
            // in textformfield gives validation  prebuild
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: false,
                  maxLength: 10,
                  controller: name_Controller,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => add_nameListner(),
                  decoration: InputDecoration(
                    labelText: "email",
                    hintText: "E-mail/ username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("${name_Controller.text}");
                    setState(() {});
                  },
                  child: Text("submitted"))
              //password
            ],
          )
        ],
      ),
    );
  }
}

import 'package:api/pages/listview/listview.dart';
import 'package:flutter/material.dart';

// task 15 create registrationform given all detail
class FormRegistration extends StatefulWidget {
  const FormRegistration({super.key});

  @override
  State<FormRegistration> createState() => _FormRegistrationState();
}

class _FormRegistrationState extends State<FormRegistration> {
  String? gender;
  String u_name = "";
  String u_mail = "";
  TextEditingController fullnameController = TextEditingController();

  TextEditingController mailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 217, 169),
        title: Text(
          'Registration',
          style: TextStyle(
              color: Colors.brown[200], fontFamily: "MyFonts", fontSize: 32),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // textformfield for full-name.....
                Text(
                  "Name",
                  style: TextStyle(
                    color: Colors.brown[200],
                  ),
                ),
                TextFormField(
                    controller: fullnameController,
                    onSaved: (String? newvalue) {
                      u_name = fullnameController.text;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Full-Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (fullnameController == null ||
                          fullnameController.text.isEmpty) {
                        return "Please enter your fullname";
                      }
                      return null;
                    }),

                SizedBox(
                  height: 10.0,
                ),
                // textformfield for age....

                Text(
                  "Age",
                  style: TextStyle(color: Colors.brown[200]),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Age",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                // radiobutton for gender
                Text(
                  "Gender",
                  style: TextStyle(color: Colors.brown[200]),
                ),
                Row(
                  children: [
                    Radio(
                      value: "male",
                      groupValue: gender,
                      onChanged: (String? val) {
                        gender = val!;
                        setState(() {
                          print("gender : $val");
                        });
                      },
                    ),
                    Text("male"),
                    Radio(
                        value: "female",
                        groupValue: gender,
                        onChanged: (String? val) {
                          gender = val!;
                          setState(() {
                            print(" female : $val");
                          });
                        }),
                    Text("female")
                  ],
                ),
                Text(
                  'City',
                  style: TextStyle(
                    color: Colors.brown[200],
                  ),
                ),

                //  dropdown button for city
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Height",
                  style: TextStyle(color: Colors.brown[200]),
                ),
                Row(
                  spacing: 10.0,
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            suffix: Text("ft"), border: OutlineInputBorder()),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            suffix: Text("kg"), border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),

                Text(
                  "Types of sport interest",
                  style: TextStyle(color: Colors.brown[200]),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Sports Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Contact No:",
                  style: TextStyle(),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("Email Id"),
                TextFormField(
                    controller: mailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onSaved: (Value) {
                      u_mail = mailController.text;
                    },
                    validator: (value) {
                      if (value!.isEmpty || value == null) {
                        return " email required";
                      }
                      return null;
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll<Color>(Colors.grey),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ListviewWidget(),
                            ),
                          );
                        }
                        setState(() {
                          print("$u_name");
                          print("$u_mail");
                        });
                      },
                      child: Text(
                        "submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll<Color>(Colors.grey)),
                      onPressed: () {
                        fullnameController.clear;
                        _formKey.currentState!.reset();
                        setState(() {
                          u_name = "";
                          u_mail = "";
                        });
                        print("$u_name");
                      },
                      child: Text(
                        "reset",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

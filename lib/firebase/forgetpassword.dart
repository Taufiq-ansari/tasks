import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  resetPassword(String email) {
    if (email != '') {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("please enter email"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Login text

            Center(
              child: Text(
                "Forget Email.",
                style: TextStyle(fontSize: 30, fontFamily: "MyFonts"),
              ),
            ),
            // textfield for username
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter valid email";
                  }
                  return null;
                },
              ),
            ),
            //textfield for password

            // Padding(
            //   padding: const EdgeInsets.only(right: 14.0),
            //   child: Text("Forget Password"),
            // ),

            //login Button
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  resetPassword(_emailController.text);

                  setState(() {});
                }
              },
              child: Container(
                margin: EdgeInsets.all(8),
                alignment: Alignment.center,
                height: 50,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white38, fontSize: 20),
                ),
              ),
            ),
            // text
          ],
        ),
      ),
    );
  }
}

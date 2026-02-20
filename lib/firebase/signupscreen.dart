import 'package:api/firebase/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final email_controller = TextEditingController();

  final password_Controller = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  userRegistration() async {
    try {
      final userCrendential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email_controller.text.trim(),
        password: password_Controller.text.trim(),
      );

      print(userCrendential);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Created Successfully ✅"),
        ),
      );

      email_controller.clear();
      password_Controller.clear();
    } on FirebaseAuthException catch (firebase) {
      print("===> firebase auth Error: $firebase");
    } catch (e) {
      print("===> Error ${e}");
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
                "Sign Up.",
                style: TextStyle(fontSize: 30, fontFamily: "MyFonts"),
              ),
            ),
            // textfield for username
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: email_controller,
                decoration: InputDecoration(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: password_Controller,
                decoration: InputDecoration(
                  hintText: "Password",
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
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter valid password";
                  } else if (value.length < 5) {
                    return "password should be greater than 5";
                  }
                  return null;
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Text("Forget Password"),
            ),

            //login Button
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  print("Successfully Sign-Up");
                  userRegistration();
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
                  "Sign Up",
                  style: TextStyle(color: Colors.white38, fontSize: 20),
                ),
              ),
            ),
            // text
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      );
                      print("sign in clicked");
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

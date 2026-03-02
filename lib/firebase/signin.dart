import 'package:api/firebase/firebasescreen.dart';
import 'package:api/firebase/forgetpassword.dart';
import 'package:api/pages/todohomepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final image = "https://cdn2.hubspot.net/hubfs/53/image8-2.jpg";
  final email_controller = TextEditingController();

  final password_Controller = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  userLogin() async {
    try {
      final userCrendential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: email_controller.text.trim(),
        password: password_Controller.text.trim(),
      )
          .then(
        (value) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ToDoHomepage(),
            ),
          );
        },
      );

      setState(() {});
// print user credential in terminal....
      print(userCrendential);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Logged In Successfully"),
        ),
      );

      email_controller.clear();
      password_Controller.clear();
    } on FirebaseAuthException catch (firebase) {
      print("===> Firebase Auth Error: $firebase");
    } catch (e) {
      print("===> Error ${e}");
    }
  }

  //google authentication
  Future<UserCredential?> userGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignIn _googleSignIn = await GoogleSignIn();

      final userLog = await _googleSignIn.signIn();

      if (userLog == null) {
        return null;
      }
      // Obtain the auth details from the request
      GoogleSignInAuthentication _userAuth = await userLog.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: _userAuth.accessToken,
        idToken: _userAuth.idToken,
      );
      print("===>${credential.idToken}");
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print("==>Google Auth Error ${e}");

      return null;
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
                "Sign In.",
                style: TextStyle(fontSize: 30, fontFamily: "MyFonts"),
              ),
            ),
            // textfield for username
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: email_controller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline_rounded),
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
                  prefixIcon: Icon(Icons.password_outlined),
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

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetPassword(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: Text("Forget Password"),
              ),
            ),

            //login Button
            GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  print("Successfully Sign-In");
                  userLogin();
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
                  "Sign In",
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
                      Navigator.pop(context);
                      print("sign up clicked");
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 20,
              thickness: 2,
              endIndent: 20,
            ),
            GestureDetector(
              onTap: () => userGoogle(),
              child: Container(
                margin: EdgeInsets.all(8),
                alignment: Alignment.center,
                height: 40,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(08),
                  color: Colors.blue,
                ),
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(image),
                      radius: 12,
                    ),
                    Text(
                      "Google",
                      style: TextStyle(color: Colors.white60, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

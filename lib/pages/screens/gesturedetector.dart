import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({super.key});

  @override
  State<GestureDetectorScreen> createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            /// ontap..
            onTap: () {
              setState(() {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("ontap button")));
                print("pressed :on tap");
              });
            },

            // ondoubletap..
            onDoubleTap: () {
              print(" clicked two time");
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("double clicked")));
            },

            //longpress
            onLongPress: () {
              print("longPressed");
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("longPress")));
            },

            child: Center(
              child: Container(
                // margin: EdgeInsets.all(70),
                height: 40,
                width: 250,
                color: Colors.blue,
                child: Center(child: Text("Button")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

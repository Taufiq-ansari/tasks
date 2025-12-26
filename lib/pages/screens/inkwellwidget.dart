import 'package:flutter/material.dart';

class InkwellWidgetScreen extends StatelessWidget {
  const InkwellWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              splashColor: const Color.fromARGB(255, 194, 180, 136),
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                print("object printed");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("button tapped"),
                  ),
                );
              },
              onDoubleTap: () {
                print("object printed");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "on double tapped",
                    ),
                  ),
                );
              },
              onLongPress: () {
                print("on long pressed");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "on long pressed button",
                    ),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30),
                  // shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "button press",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

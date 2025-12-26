import 'package:api/pages/navigation/screen_args.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          //default push & pushnamed
          onTap: () {
            print("move to second screen");
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => FeedScreen(),
            //   ),
            // );
            Navigator.pushNamed(
              context,
              '/feed',
              arguments: ScreenArguments(
                //data pass to secondscreen
                "welcome",
              ),
            );
          },
          child: Container(
            height: 100,
            width: 200,
            color: Colors.grey,
            child: Center(child: Text("push  to next screen.")),
          ),
        ),
      ),
    );
  }
}

import 'package:api/6-jan/secondscreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState(); // 1.-- create state
}

class _FirstScreenState extends State<FirstScreen> {
  late AppLifecycleListener _listener;

  @override
  void initState() {
    super.initState();
    _listener = AppLifecycleListener(
      onPause: onpause,
      onDetach:
          ondetach, // --->  This callback is only called on iOS and Android. it won`t work on emulator
      onResume: onresume,
    );
  }

  ///APPLICATION LIFECYCLE IN FLUTTER
  ///
  ///
  ///
  onpause() {
    print(" application paused");
  }

  onresume() {
    print("application resume");
  }

  ondetach() {
    print("application detached");
  }

  /// Widget lifecycle
  @override
  void didChangeDependencies() {
    print("did change dependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant FirstScreen oldWidget) {
    print("did update dependencies");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("deactive");
    super.deactivate();
  }

  @override
  void dispose() {
    _listener.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build method called");
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.amber[50],
        title: Text(
          "First screen",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "homepage1",

            //  theme change  for particular widgets
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).splashColor,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        },
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}

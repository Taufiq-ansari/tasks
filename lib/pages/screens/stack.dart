import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  int indexScreenTap = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          if (indexScreenTap < 3) {
            indexScreenTap++;
          } else {
            indexScreenTap = 0;
          }
          setState(() {});
        },
        child: IndexedStack(
          index: indexScreenTap,
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.amber[100],
            ),
            Container(
              color: Colors.amber[200],
            ),
          ],
        ),
      ),
    );
  }
}

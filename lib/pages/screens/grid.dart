import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.lightGreen),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.lightGreen),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.blueGrey),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.lightGreen),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.redAccent),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.blue[100]),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.green[200]),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.lightGreen),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // height: 100,
                      // width: 100,
                      decoration: BoxDecoration(color: Colors.blueGrey),
                    ),
                  ),
                ],
              ),
            ),
            // Spacer(),
            Expanded(
              // flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.amber[200]),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 213, 162),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.greenAccent),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.redAccent),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

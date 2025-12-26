import 'package:flutter/material.dart';

class ScrollableScreen extends StatelessWidget {
  const ScrollableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(color: Colors.amber[100]),
              child: ListView(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 146, 124, 124)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 223, 210, 210)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 154, 146, 146)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 193, 176, 176)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 193, 187, 187)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.brown[200],
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 146, 124, 124)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 223, 210, 210)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 154, 146, 146)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 193, 176, 176)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 193, 187, 187)),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(color: Colors.grey),
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

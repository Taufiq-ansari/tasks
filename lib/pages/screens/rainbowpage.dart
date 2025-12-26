import 'package:flutter/material.dart';

class MyRainWidget extends StatelessWidget {
  const MyRainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.redAccent),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.redAccent),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.red[300]),
                  ),
                ),
                SizedBox(
                  height: 10,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.green[100]),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(color: Colors.redAccent),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // width: d
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double minvValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Slider(
              activeColor: Colors.grey,
              value: minvValue,
              min: 0.0,
              max: 1.0,
              divisions: 10,
              label: "$minvValue",
              onChanged: (selected) {
                minvValue = selected;
                setState(() {
                  
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

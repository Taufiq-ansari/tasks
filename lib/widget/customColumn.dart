import 'package:flutter/material.dart';

class CustomColumnWidget extends StatelessWidget {
  CustomColumnWidget({
    super.key,
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.folder,
          color: color,
          size: 60,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

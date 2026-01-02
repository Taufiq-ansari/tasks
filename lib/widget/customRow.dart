import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({super.key, required this.icon, required this.color});

  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
      ],
    );
  }
}

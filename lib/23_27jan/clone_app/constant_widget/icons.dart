import 'package:flutter/material.dart';

class MyIconWidget extends StatelessWidget {
  const MyIconWidget({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  final Icon icon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: icon,
      color: color,
    );
  }
}

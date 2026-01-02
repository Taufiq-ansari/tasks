import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.icon,
  });

  final double height;
  final double width;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: 12,
        color: Colors.white,
      ),
    );
  }
}

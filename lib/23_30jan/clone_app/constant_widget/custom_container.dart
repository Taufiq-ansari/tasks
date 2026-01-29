import 'package:flutter/material.dart';

class MyWhatsappCustomContainer extends StatelessWidget {
  MyWhatsappCustomContainer({
    super.key,
    required this.child,
    this.height,
  });

  final Widget child;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: child,
    );
  }
}

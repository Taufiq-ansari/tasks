import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.transparent,
      onPressed: () {},
      child: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        child: Icon(
          Icons.cleaning_services_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}

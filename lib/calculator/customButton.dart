import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({
    super.key,
    required this.onpressed,
    required this.labelText,
    required this.textColor,
  });

  final VoidCallback onpressed;
  final String labelText;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      
      child: Text(
        labelText,
        style: TextStyle(color: textColor, fontSize: 25.0),
      ),
    );
  }
}

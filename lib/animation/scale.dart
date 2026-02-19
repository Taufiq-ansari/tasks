import 'dart:math' as Math;
import 'package:flutter/material.dart';

class CircleScreen extends StatefulWidget {
  const CircleScreen({super.key});

  @override
  State<CircleScreen> createState() => _CircleScreenState();
}

class _CircleScreenState extends State<CircleScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3700),
    )..repeat(); // Runs once and stops
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFBDBDBD),
        title: Text("Circle centric animation"),
      ),
      backgroundColor: const Color(0xFFBDBDBD),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              size: const Size(400, 400),
              painter: OppositeConcentricPainter(_controller.value),
            );
          },
        ),
      ),
    );
  }
}

class OppositeConcentricPainter extends CustomPainter {
  final double value;

  OppositeConcentricPainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final baseRadius = size.width / 2.5;

    double movementEnd = 0.7;
    final colors = [
      const Color(0xFFA5A7AD),
      const Color(0xFF8B8E96),
      const Color(0xFF6A6D7A),
      const Color(0xFF4A4D66),
      const Color(0xFF2E3156),
      const Color(0xFF1C2045),
      const Color(0xFF0D0F2C),
    ];

    final paint = Paint()..style = PaintingStyle.fill;

    // Normalize animation to movement window
    double t = (value / movementEnd).clamp(0.0, 1.0);

    double delayeperRing = 0.03;
    double totalwave = (colors.length - 1) * delayeperRing;
    double active = 1.0 - totalwave;

    for (int i = 0; i < colors.length; i++) {
      paint.color = colors[i];

// ===> radius base
      double radius = baseRadius - (baseRadius / colors.length) * i;

// ===> delay for circle  outer and inner
      double delay = (colors.length - 1 - i) * delayeperRing;

      double result = ((t - delay).clamp(0.0, active)) / active;

// ==> elastic
      double wave = Math.pow(Math.sin(result * Math.pi), 0.8).toDouble();

      // double gap = baseRadius / colors.length;

      // ===> inner circle move
      double inner = (i + 1) * 6.0;

      double exp = (35.0 + inner) * wave;
      radius += exp;
      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant OppositeConcentricPainter oldDelegate) {
    return oldDelegate.value != value;
  }
}

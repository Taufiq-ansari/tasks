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
      duration: const Duration(seconds: 6),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBDBDBD),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              size: const Size(400, 300),
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

    double scaleValue;

    if (value < 0.2) {
      scaleValue = 1;

      // print(scaleValue);
    } else if (value < 0.45) {
      final t = (value - 0.2) / 0.25;
      scaleValue = 30 * Curves.easeOutCubic.transform(t);
    } else if (value < 0.7) {
      final t = (value - 0.45) / 0.25;
      scaleValue = 30 - (45 * t);
    } else {
      final t = (value - 0.7) / 0.3;
      scaleValue = -15 + (15 * Curves.easeInOut.transform(t));
    }

    for (int i = 0; i < colors.length; i++) {
      paint.color = colors[i];

      double phase = (value + (i * 0.080)) % 1.0;
      double wave = 20 * Math.sin(phase * 2 * Math.pi);
      double radius = baseRadius - (baseRadius / colors.length) * i;
      radius += scaleValue + wave;
      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant OppositeConcentricPainter oldDelegate) {
    return oldDelegate.value != value;
  }
}

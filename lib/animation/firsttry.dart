
import 'dart:math' as Math;
import 'dart:ui';

import 'package:flutter/material.dart';

class OppositeConcentricPainter extends CustomPainter {
  final double value;

  OppositeConcentricPainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final baseRadius = size.width / 2.5;

    const double movementEnd = 0.7; // 70% movement, 30% pause
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

    double delayPerRing = 0.05;
    double totalWaveDelay = (colors.length - 1) * delayPerRing;
    double activeWindow = 1.0 - totalWaveDelay;

    for (int i = 0; i < colors.length; i++) {
      paint.color = colors[i];

      // Base radius (static concentric layout)
      double radius = baseRadius - (baseRadius / colors.length) * i;

      // Delay from outer → inner
      double delay = (colors.length - 1 - i) * delayPerRing;

      double localT = ((t - delay).clamp(0.0, activeWindow)) / activeWindow;

      // Elastic ripple curve (same as your first widget)
      double waveValue = Math.pow(Math.sin(localT * Math.pi), 0.8).toDouble();

      double gap = baseRadius / colors.length;

      // Inner circles move more
      double innerBoost = (i + 1) * 6.0;

      double expansion = (35.0 + innerBoost) * waveValue;

      radius += expansion;

      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant OppositeConcentricPainter oldDelegate) {
    return oldDelegate.value != value;
  }
}

import 'package:flutter/material.dart';

class FirstTryScreen extends StatefulWidget {
  const FirstTryScreen({super.key});

  @override
  State<FirstTryScreen> createState() => _FirstTryScreenState();
}

class _FirstTryScreenState extends State<FirstTryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
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
  paint(Canvas canvas, Size size) async {
    final center = size.center(Offset.zero);
    final baseRadius = size.width / 2.3;

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

    double amplified = 20;
    double delay = 0.0;

    final centerIndex = colors.length - 1;
    // final easeOut = Curves.easeInOut.transform(value);
    final easeIn = Curves.easeIn.transform(value);

    for (int i = 0; i < colors.length; i++) {
      paint.color = colors[i];
      int distanceFromCenter = centerIndex;

      double waveValue = value - (distanceFromCenter * delay);

      waveValue = waveValue.clamp(0.1, 10.0);

      double curved = Curves.easeOutCubic.transform(waveValue);

      double radius = baseRadius - (baseRadius / colors.length - 1) * i;

      if (i == colors.length - 1) {
        // radius += 30 * easeOut;
        radius += 1 * easeIn;
      }
      // else {
      radius += amplified * curved;
      // radius -= amplified * 1;
      // radius += 30 * easeIn;
      // }
      canvas.drawCircle(center, radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant OppositeConcentricPainter oldDelegate) {
    return oldDelegate.value != value;
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

class ConcentricProgressRings extends StatelessWidget {
  const ConcentricProgressRings({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: RingPainter(),
        size: const Size(200, 200),
      ),
    );
  }
}

class RingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final rings = [
      _RingData(progress: 6.08 / 8.0, color: Colors.lightBlue, width: 14),
      _RingData(progress: 1050 / 2000, color: Colors.pinkAccent, width: 14),
      _RingData(progress: 2015 / 6000, color: Colors.orangeAccent, width: 14),
    ];

    double radius = size.width / 2;

    for (var ring in rings) {
      final rect = Rect.fromCircle(center: center, radius: radius);
      final backgroundPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = ring.width
        ..color = ring.color.withOpacity(0.2)
        ..strokeCap = StrokeCap.round;

      final foregroundPaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = ring.width
        ..color = ring.color
        ..strokeCap = StrokeCap.round;

      // Draw background
      canvas.drawArc(rect, -pi / 2, 2 * pi, false, backgroundPaint);

      // Draw progress
      canvas.drawArc(
          rect, -pi / 2, 2 * pi * ring.progress, false, foregroundPaint);

      radius -= 20; // decrease radius for next ring
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class _RingData {
  final double progress;
  final Color color;
  final double width;

  _RingData({required this.progress, required this.color, this.width = 12});
}

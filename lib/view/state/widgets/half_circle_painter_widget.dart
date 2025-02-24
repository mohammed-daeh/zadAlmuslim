import 'dart:math';
import 'package:flutter/material.dart';

class HalfCirclePainterWidget extends CustomPainter {
  final List<double> progressValues;
  final List<Color> colors = [
    Color(0xffCAE0CD),
    Color(0xff78DAF0),
    Color(0xff2BB649),
    Color(0xffFDE265),
    Color(0xffF4BD64),
    Color(0xffFF8B00),
  ];

  HalfCirclePainterWidget(this.progressValues);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..color = Color(0xffEEF7F9)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 13;

    final Paint progressPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 14;

    double radius = size.width / 2;
    Offset center = Offset(size.width / 2, size.height);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      pi,
      false,
      backgroundPaint,
    );

    for (int i = 0; i < progressValues.length; i++) {
      double sweepAngle = (progressValues[i] / 100) * pi;
      progressPaint.color = colors[i];

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        pi,
        sweepAngle,
        false,
        progressPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

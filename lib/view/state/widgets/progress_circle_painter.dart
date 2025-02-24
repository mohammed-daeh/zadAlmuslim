import 'dart:math';

import 'package:flutter/material.dart';

class ProgressCirclePainter extends CustomPainter {
  final List<double> progressValues;
  final List<Color> colors = [
    Color(0xff78DAF0),
    Color(0xffCAE0CD),
    Color(0xffF4BD64),
    Color(0xff2BB649),
  ];

  ProgressCirclePainter(this.progressValues);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint circlePaint = Paint()
      ..color = Color(0xffEEF7F9)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final Paint progressPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    double radius = size.width / 2;
    Offset center = Offset(size.width / 2, size.height / 2);

    // رسم الخلفية
    canvas.drawCircle(center, radius, circlePaint);


    for (int i = 0; i < progressValues.length; i++) {
      double sweepAngle = (progressValues[i] / 100) * 2 * pi;
      progressPaint.color = colors[i];
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius - 0),
        -pi / 2, 
        sweepAngle,
        false,
        progressPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

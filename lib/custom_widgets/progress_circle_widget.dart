// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProgressCircle extends StatelessWidget {
  final double progress; 

  const ProgressCircle({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(136, 136), 
      painter: CircleProgressPainter(progress: progress),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final double progress;

  CircleProgressPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // تحويل القيمة من 0 إلى 100 إلى 0 إلى 1
    final double normalizedProgress = progress / 100;

    // إعدادات الرسم
    final backgroundPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 13
      ..strokeCap = StrokeCap.round;

    final progressPaint = Paint()
      ..color = Color(0xffDEA56E)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20
      ..strokeCap = StrokeCap.round;

    // زاوية الفراغ (بالراديان)
    const double gapAngle = 0.3; // يمكن تعديل هذه القيمة لتغيير حجم الفراغ

    // بداية الرسم مع الفراغ
    const double startAngle = -3.14159 / 2 + gapAngle;

    // حساب الزاوية مع الفراغ
    final double sweepAngle = 2 * 3.14159 * normalizedProgress - 2 * gapAngle;

    // رسم الدائرة الخلفية مع الفراغ
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle + sweepAngle + gapAngle, // بداية الفراغ
      2 * 3.14159 - sweepAngle - 2 * gapAngle, // الزاوية المتبقية
      false,
      backgroundPaint,
    );

    // رسم الدائرة الأمامية (التقدم) مع الفراغ
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );

    // إضافة النص (نسبة التقدم)
    final text = '${progress.toStringAsFixed(0)}%'; // النسبة المئوية
    final textStyle = TextStyle(
      color: Colors.white, // لون النص
      fontSize: 28, // حجم النص
      fontWeight: FontWeight.w600, // سمك النص
    );

    final textSpan = TextSpan(text: text, style: textStyle);
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    // تحديد حجم النص ووضعه في المركز
    textPainter.layout();
    final textOffset = Offset(
      center.dx - textPainter.width / 2,
      center.dy - textPainter.height / 2,
    );

    // رسم النص
    textPainter.paint(canvas, textOffset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

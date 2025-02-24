import 'package:flutter/widgets.dart';

class ProgressPainter extends CustomPainter {
  final int progress;
  final int total;

  ProgressPainter(this.progress, this.total);

  @override
  void paint(Canvas canvas, Size size) {
    final paintLine = Paint()
      ..color = Color(0xffFFF2E5)
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round;

    final paintProgress = Paint()
      ..color = Color(0xffDEA56E)
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round;

    double progressWidth = (progress / total) * size.width;

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paintLine,
    );

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(progressWidth, size.height / 2),
      paintProgress,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

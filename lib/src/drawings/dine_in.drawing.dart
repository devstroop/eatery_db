import 'package:flutter/material.dart';

class DineInDrawing extends StatelessWidget {
  final Color? color;

  const DineInDrawing({super.key, this.color});
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(40, 40),
      painter: DineInPainter(color: color),
    );
  }
}

class DineInPainter extends CustomPainter {
  final Color? color;

  DineInPainter({this.color});
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color ?? const Color(0xFFE0855E)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(5, 28.333)
      ..lineTo(35, 28.333)
      ..lineTo(35, 30)
      ..lineTo(5, 30)
      ..close();

    final circlePath = Path()
      ..addOval(Rect.fromCircle(center: const Offset(20, 13.983), radius: 3.343));

    canvas.drawPath(path, paint);
    canvas.clipPath(circlePath);
    canvas.drawPath(circlePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

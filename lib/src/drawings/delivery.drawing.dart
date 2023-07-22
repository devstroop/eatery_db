import 'package:flutter/material.dart';

class DeliveryDrawing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(40, 40),
      painter: DeliveryDrawingPainter(),
    );
  }
}

class DeliveryDrawingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path1 = Path()
      ..moveTo(31.667, 11.666)
      ..lineTo(31.667, 10)
      ..lineTo(10, 10)
      ..lineTo(10, 11.666)
      ..lineTo(11.667, 11.666)
      ..lineTo(11.667, 15.083)
      ..lineTo(6.867, 22.333)
      ..lineTo(1, 22.333)
      ..lineTo(1, 15.666)
      ..lineTo(1, 15)
      ..lineTo(1.734, 14.084)
      ..lineTo(6.534, 6.834)
      ..lineTo(6.534, 6.834)
      ..lineTo(6.534, 6.834)
      ..lineTo(5.8, 5.584)
      ..lineTo(5.8, 1.334)
      ..lineTo(11.667, 1.334)
      ..lineTo(11.667, 0)
      ..lineTo(6.667, 0)
      ..lineTo(1.667, 0)
      ..lineTo(0, 0)
      ..lineTo(0, 40)
      ..lineTo(40, 40)
      ..lineTo(40, 0)
      ..lineTo(31.667, 0)
      ..lineTo(31.667, 11.666)
      ..close();

    final path2 = Path()
      ..moveTo(31.667, 11.666)
      ..lineTo(31.667, 10)
      ..lineTo(10, 10)
      ..lineTo(10, 11.666)
      ..lineTo(11.667, 11.666)
      ..lineTo(11.667, 15.083)
      ..lineTo(6.867, 22.333)
      ..lineTo(1, 22.333)
      ..lineTo(1, 15.666)
      ..lineTo(1, 15)
      ..lineTo(1.734, 14.084)
      ..lineTo(6.534, 6.834)
      ..lineTo(6.534, 6.834)
      ..lineTo(6.534, 6.834)
      ..lineTo(5.8, 5.584)
      ..lineTo(5.8, 1.334)
      ..lineTo(11.667, 1.334)
      ..lineTo(11.667, 0)
      ..lineTo(6.667, 0)
      ..lineTo(1.667, 0)
      ..lineTo(0, 0)
      ..lineTo(0, 40)
      ..lineTo(40, 40)
      ..lineTo(40, 0)
      ..lineTo(31.667, 0)
      ..lineTo(31.667, 11.666)
      ..close();

    final path3 = Path()
      ..moveTo(10, 10)
      ..lineTo(15, 10)
      ..lineTo(15, 11.666)
      ..lineTo(10, 11.666)
      ..close();

    final path4 = Path()
      ..moveTo(31.667, 18.333)
      ..cubicTo(31.667, 15.566, 29.434, 13.333, 26.667, 13.333)
      ..cubicTo(23.9, 13.333, 21.667, 15.566, 21.667, 18.333)
      ..cubicTo(21.667, 21.1, 23.9, 23.333, 26.667, 23.333)
      ..cubicTo(29.434, 23.333, 31.667, 21.1, 31.667, 18.333)
      ..close();

    canvas.drawPath(path1, paint);
    canvas.drawPath(path2, paint);
    canvas.drawPath(path3, paint);
    canvas.drawPath(path4, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
import 'package:flutter/material.dart';

class TakeAwayDrawing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(40, 40),
      painter: TakeAwayDrawingPainter(),
    );
  }
}

class TakeAwayDrawingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path1 = Path()
      ..moveTo(35.483, 11.25)
      ..lineTo(32.333, 13.717)
      ..lineTo(32.383, 14.651)
      ..lineTo(26.617, 9.85)
      ..lineTo(23.583, 5)
      ..lineTo(16.417, 5)
      ..lineTo(10.25, 9.85)
      ..lineTo(4.483, 14.651)
      ..lineTo(4.533, 13.717)
      ..lineTo(1.383, 11.25)
      ..lineTo(0, 12.617)
      ..lineTo(4.25, 18.217)
      ..lineTo(4.283, 18.65)
      ..lineTo(3.95, 18.867)
      ..lineTo(3.817, 18.583)
      ..lineTo(2.55, 16.067)
      ..lineTo(3.317, 14.983)
      ..lineTo(4.383, 16.5)
      ..lineTo(4.367, 16.717)
      ..lineTo(5.25, 18.95)
      ..lineTo(10.367, 24.917)
      ..lineTo(10.25, 32.083)
      ..lineTo(11.067, 32.083)
      ..lineTo(11.183, 24.917)
      ..lineTo(16.25, 18.95)
      ..lineTo(17.133, 16.717)
      ..lineTo(17.117, 16.5)
      ..lineTo(18.183, 14.983)
      ..lineTo(18.95, 16.067)
      ..lineTo(17.683, 18.583)
      ..lineTo(17.55, 18.867)
      ..lineTo(17.217, 18.65)
      ..lineTo(17.25, 18.217)
      ..lineTo(21.5, 12.617)
      ..lineTo(20.117, 11.25)
      ..lineTo(20.15, 11.033)
      ..lineTo(18.75, 9.217)
      ..lineTo(17.767, 10.35)
      ..lineTo(18.15, 11.25)
      ..lineTo(17.817, 11.717)
      ..lineTo(16.883, 10.4)
      ..lineTo(17.383, 9.867)
      ..lineTo(18.65, 11.983)
      ..lineTo(19.85, 13.717)
      ..lineTo(19.883, 13.75)
      ..lineTo(20.883, 12.367)
      ..lineTo(23.583, 9.917)
      ..lineTo(26.283, 12.367)
      ..lineTo(27.283, 13.75)
      ..lineTo(27.317, 13.717)
      ..lineTo(28.517, 11.983)
      ..lineTo(29.783, 9.867)
      ..lineTo(30.283, 10.4)
      ..lineTo(29.35, 11.717)
      ..lineTo(29.383, 11.25)
      ..lineTo(29.767, 10.35)
      ..lineTo(28.783, 9.217)
      ..lineTo(27.383, 11.033)
      ..lineTo(27.417, 11.25)
      ..lineTo(26.033, 12.617)
      ..lineTo(30.283, 18.217)
      ..lineTo(30.317, 18.65)
      ..lineTo(29.983, 18.867)
      ..lineTo(29.85, 18.583)
      ..lineTo(28.583, 16.067)
      ..lineTo(29.35, 14.983)
      ..lineTo(30.417, 16.5)
      ..lineTo(30.4, 16.717)
      ..lineTo(31.283, 18.95)
      ..lineTo(32.4, 24.917)
      ..lineTo(32.283, 32.083)
      ..lineTo(33.1, 32.083)
      ..lineTo(33.217, 24.917)
      ..lineTo(34.35, 18.95)
      ..lineTo(35.233, 16.717)
      ..lineTo(35.217, 16.5)
      ..lineTo(36.283, 14.983)
      ..lineTo(37.05, 16.067)
      ..lineTo(35.783, 18.583)
      ..lineTo(35.65, 18.867)
      ..lineTo(35.317, 18.65)
      ..lineTo(35.35, 18.217)
      ..lineTo(39.6, 12.617)
      ..close();

    final path2 = Path()
      ..moveTo(9.333, 30.25)
      ..lineTo(14.517, 30.25)
      ..lineTo(14.117, 18.167)
      ..lineTo(9.733, 18.167)
      ..lineTo(9.733, 30.25)
      ..close();

    canvas.drawPath(path1, paint);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
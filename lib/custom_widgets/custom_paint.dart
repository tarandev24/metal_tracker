import 'package:flutter/material.dart';
import 'package:metal_tracker/static.dart';

class VerticalBluePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = primaryColor;
    final rect = Rect.fromLTWH(0, 0, size.width, size.height / 2.25);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
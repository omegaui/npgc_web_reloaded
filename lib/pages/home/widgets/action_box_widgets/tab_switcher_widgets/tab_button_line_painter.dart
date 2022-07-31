
import 'package:flutter/material.dart';

class TabButtonLinePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(2, size.height - 3), Offset(size.width - 4, size.height - 3), Paint()..color = Colors.blue..strokeWidth = 3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


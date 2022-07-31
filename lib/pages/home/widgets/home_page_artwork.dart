
import 'package:flutter/material.dart';

class HomePageArtwork extends StatelessWidget{
  const HomePageArtwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArtworkPainter(),
    );
  }

}

class ArtworkPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(size.width - 10, size.height - 25), 150, Paint()..color = const Color(0xFFFF9933));
    canvas.drawCircle(Offset(size.width - 10, size.height - 25), 100, Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width - 10, size.height - 25), 50, Paint()..color = const Color(0xFF138808));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}



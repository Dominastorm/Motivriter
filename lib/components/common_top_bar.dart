import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CommonTopBar extends StatelessWidget {
  final double height;
  CommonTopBar(this.height);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomPaint(
      child: Container(
        height: height,
      ),
      painter: MyPainter(width, height),
    );
  }
}

class MyPainter extends CustomPainter {
  final width;
  final height;
  MyPainter(this.width, this.height);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xff6CC3C6).withOpacity(0.38);
    path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height * 0.95, size.width,
        size.height * 0.95);
    path.cubicTo(size.width * 0.53, 0, size.width * 0.06, size.height * 1.18, 0,
        size.height * 0.95);
    path.cubicTo(0, size.height * 0.95, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    canvas.drawPath(path, paint);

    // Path number 3
    var rect = Offset.zero & size;

    paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(
            0xff5a9ed1,
          ),
          Color(
            0xff6CC3C6,
          ),
        ],
        stops: [
          0,
          1,
        ],
      ).createShader(rect);
    path = Path();
    path.lineTo(0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height * 0.78, size.width,
        size.height * 0.78);
    path.cubicTo(size.width * 0.53, 0, size.width * 0.26, size.height * 1.55, 0,
        size.height * 0.78);
    path.cubicTo(0, size.height * 0.78, 0, 0, 0, 0);
    path.cubicTo(0, 0, 0, 0, 0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
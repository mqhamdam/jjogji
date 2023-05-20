import 'dart:math' as math;

import 'package:flutter/material.dart';

class CAvatar extends StatelessWidget {
  const CAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ReuleauxTrianglePainter(),
      size: const Size(50, 50),
      //   child: Container(
      //       height: 30,
      //       width: 30,
      //       color: Colors.grey[200],
      //       child: Image.asset(
      //         'assets/images/avatar/02.png',
      //       )),
      // );
    );
  }
}

class _ReuleauxTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = size.width / 2;

    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

    final Path path = Path()
      ..moveTo(centerX, centerY + radius)
      ..arcToPoint(
        Offset(centerX + radius * math.cos(math.pi / 3),
            centerY - radius * math.sin(math.pi / 50),),
        radius: Radius.circular(radius),
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_ReuleauxTrianglePainter oldDelegate) => false;
}

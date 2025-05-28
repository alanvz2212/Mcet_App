// import 'package:flutter/material.dart';
// import 'package:musaliarapp/utils/colors.dart';

// class SCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final calc = (10 / 15) * size.width;
//     Path path_0 = Path();
//     path_0.moveTo(size.width, 0);
//     path_0.cubicTo(size.width, calc, calc, size.width, 0, size.width);
//     path_0.lineTo(size.width, size.height);
//     path_0.lineTo(size.width, 0);

//     final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
//     paint0Fill.color = MyColors.offWhite;
//     canvas.drawPath(path_0, paint0Fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }

import 'package:flutter/material.dart';

class SCustomPainter extends CustomPainter {
  final Color fillColor;

  SCustomPainter({required this.fillColor});

  @override
  void paint(Canvas canvas, Size size) {
    final calc =
        (10 / 15) *
        size.width; // No .w here, size.width is already logical pixels

    Path path_0 = Path();
    path_0.moveTo(size.width, 0);
    path_0.cubicTo(size.width, calc, calc, size.width, 0, size.width);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, 0);

    final Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = fillColor;
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

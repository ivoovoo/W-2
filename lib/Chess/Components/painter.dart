import 'dart:math';
import 'package:flutter/material.dart';

class X1Painter extends CustomPainter {
  @override
  void paint(
    Canvas canvas,
    Size size,
  ) {
    Rect rect1 = Rect.fromCircle(
      center: Offset(size.width / 6, size.height / 2.8),
      radius: (size.width + size.height) / 3,
    );

    Rect rect2 = Rect.fromCircle(
      center:
          Offset(size.width - size.width / 4, size.height - size.height / 8),
      radius: (size.width + size.height) / 2,
    );

    const Gradient gradient = RadialGradient(
      colors: <Color>[
        Color.fromRGBO(61, 74, 235, 0.43),
        Color.fromRGBO(61, 74, 235, 0.4),
        Color.fromRGBO(61, 74, 235, 0.3),
        Color.fromRGBO(61, 74, 235, 0.25),
        Color.fromRGBO(61, 74, 235, 0.2),
        Color.fromRGBO(61, 74, 235, 0.18),
        Color.fromRGBO(61, 74, 235, 0.15),
        Color.fromRGBO(61, 74, 235, 0.1),
        Color.fromRGBO(61, 74, 235, 0.08),
        Color.fromRGBO(61, 74, 235, 0.06),
        Color.fromRGBO(61, 74, 235, 0.04),
        Color.fromRGBO(61, 74, 235, 0.02),
        Color.fromRGBO(61, 74, 235, 0.015),
        Color.fromRGBO(61, 74, 235, 0.01),
      ],
    );

    final Paint paint = Paint()..shader = gradient.createShader(rect1);
    final Paint paint2 = Paint()..shader = gradient.createShader(rect2);

    canvas.drawArc(rect1, 1, pi * 3 / 1, true, paint);
    canvas.drawArc(rect2, 1, pi * 3 / 1, true, paint2);
  }

  @override
  bool shouldRepaint(X1Painter oldDelegate) {
    return true;
  }
}

class X1Painter2 extends CustomPainter {
  @override
  void paint(
      Canvas canvas,
      Size size,
      ) {
    Rect rect1 = Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2.5),
        width: size.width * 2,
        height:  size.height / 2.3);

    Rect rect2 = Rect.fromCircle(
      center: Offset(size.width, size.height),
      radius: size.width,
    );

    const Gradient gradient = RadialGradient(
      colors: <Color>[
        Color.fromRGBO(61, 74, 235, 0.80),
        Color.fromRGBO(61, 74, 235, 0.75),
        Color.fromRGBO(61, 74, 235, 0.7),
        Color.fromRGBO(61, 74, 235, 0.6),
        Color.fromRGBO(61, 74, 235, 0.5),
        Color.fromRGBO(61, 74, 235, 0.4),
        Color.fromRGBO(61, 74, 235, 0.3),
        Color.fromRGBO(61, 74, 235, 0.25),
        Color.fromRGBO(61, 74, 235, 0.2),
        Color.fromRGBO(61, 74, 235, 0.18),
        Color.fromRGBO(61, 74, 235, 0.15),
        Color.fromRGBO(61, 74, 235, 0.1),
        Color.fromRGBO(61, 74, 235, 0.08),
        Color.fromRGBO(61, 74, 235, 0.06),
        Color.fromRGBO(61, 74, 235, 0.04),
        Color.fromRGBO(61, 74, 235, 0.02),
        Color.fromRGBO(61, 74, 235, 0.015),
        Color.fromRGBO(61, 74, 235, 0.01),
      ],
    );

    final Paint paint = Paint()..shader = gradient.createShader(rect1);
    final Paint paint2 = Paint()..shader = gradient.createShader(rect2);

    canvas.drawOval(rect1, paint);
    canvas.drawArc(rect2, 1, pi * 3 / 1, true, paint2);
  }

  @override
  bool shouldRepaint(X1Painter oldDelegate) {
    return true;
  }
}

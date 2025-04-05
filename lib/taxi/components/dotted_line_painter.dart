import 'package:flutter/material.dart';

import 'constants.dart';

class VerticalDottedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double dashHeight;
  final double dashSpace;
  final double dashWidth;

  VerticalDottedLinePainter({
    this.color = greyColor1,
    this.strokeWidth = 2.0,
    this.dashHeight = 5.0, // Высота "точки"
    this.dashSpace = 3.0, // Расстояние между точками
    this.dashWidth = 2.0, // Ширина "точки", чтобы она была сплюснута
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    double startY = 0.0;
    while (startY < size.height) {
      // Рисуем сплюснутую точку, как прямоугольник с округленными углами
      Rect rect = Rect.fromLTWH(
        size.width / 2 - dashWidth / 2, // Центрируем по оси X
        startY, // Расположение по оси Y
        dashWidth, // Ширина
        dashHeight, // Высота
      );
      canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(dashHeight / 2)), // Округляем края для pill-like формы
        paint,
      );

      // Сдвигаем Y на высоту точки + пространство между точками
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


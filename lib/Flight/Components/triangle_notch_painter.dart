import 'package:flutter/material.dart';

class TriangleNotchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint fillPaint =
    Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill;

    final Paint strokePaint =
    Paint()
      ..color = Colors.black.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.3;

    // Координаты для треугольника
    final double triangleWidth = 40; // Ширина треугольника
    final double triangleHeight = 60; // Высота треугольника

    final Path path = Path();
    path.moveTo((size.width / 2) - (triangleWidth / 2), 0); // Левый угол
    path.lineTo(size.width / 2, triangleHeight); // Вершина треугольника
    path.lineTo((size.width / 2) + (triangleWidth / 2), 0); // Правый угол
    path.close();

    // Заливка треугольника
    canvas.drawPath(path, fillPaint);

    // Рисуем обводку для двух сторон (левая и правая)
    final Path strokePath = Path();
    strokePath.moveTo((size.width / 2) - (triangleWidth / 2), 0); // Левый угол
    strokePath.lineTo(size.width / 2, triangleHeight); // Вершина треугольника
    strokePath.lineTo((size.width / 2) + (triangleWidth / 2), 0); // Правый угол

    canvas.drawPath(strokePath, strokePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

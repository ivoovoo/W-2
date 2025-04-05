import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

class ImageInsideDayPlayer extends CustomPainter {
  ImageInsideDayPlayer(
      {required this.context,
      required this.image,
      required this.image2,
      required this.image3,
      required this.image4});

  ui.Image? image;
  ui.Image? image2;
  ui.Image? image3;
  ui.Image? image4;
  final BuildContext context;

  @override
  void paint(Canvas canvas, Size size) async {
    canvas.clipRRect(
      ui.RRect.fromRectXY(
        Rect.fromPoints(
          const Offset(0, 0),
          Offset(size.width, size.height * 10),
        ),
        0,
        0,
      ),
    );
    Paint brush = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color.fromRGBO(243, 237, 228, 1),
          Color.fromRGBO(243, 237, 228, 0),
        ],
      ).createShader(
        Rect.fromCircle(
          center: const Offset(0, 0),
          radius: size.width,
        ),
      );
    if (image != null || image2 != null || image3 != null || image4 != null) {
      canvas.save();
      /* rotate(
          canvas: canvas,
          cx: image!.width.toDouble() / 2,
          cy: image!.height.toDouble() / 2,
          angle: -0.3); */
      // canvas.scale((kCanvasSize -10) / image!.height);
      canvas.drawImage(
        image!,
        Offset(-(size.width / 10), 0),
        brush,
      );
      canvas.drawImage(
        image2!,
        Offset(
          (size.width / 2) - (size.width / 10),
          0,
        ),
        brush,
      );
      canvas.drawImage(
        image3!,
        Offset(
          -(size.width / 14),
          size.height - (size.height / 2.4),
        ),
        brush,
      );
      canvas.drawImage(
        image4!,
        Offset(
          (size.width) - (size.width * 0.35),
          size.height - (size.height / 4.5),
        ),
        brush,
      );
      canvas.restore();
    }
    canvas.save();
    //rotate(canvas: canvas, cx: 200 + 50, cy: 100 + 50, angle: 0.5);
    //canvas.drawRect(Rect.fromLTWH(200, 100, 100, 100), greenBrush);
    canvas.restore();
  }

  void rotate(
      {required Canvas canvas,
      required double cx,
      required double cy,
      required double angle}) {
    canvas.translate(cx, cy);
    canvas.rotate(angle);
    canvas.translate(-cx, -cy);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ImageInsideNightPlayer extends CustomPainter {
  ImageInsideNightPlayer(
      {required this.context,
        required this.image,
        required this.image2,
        required this.image3,});

  ui.Image? image;
  ui.Image? image2;
  ui.Image? image3;
  final BuildContext context;

  @override
  void paint(Canvas canvas, Size size) async {
    canvas.clipRRect(
      ui.RRect.fromRectXY(
        Rect.fromPoints(
          const Offset(0, 0),
          Offset(size.width, size.height * 10),
        ),
        0,
        0,
      ),
    );
    Paint brush = Paint()
      ..shader = const LinearGradient(
        colors: [
          Color.fromRGBO(243, 237, 228, 1),
          Color.fromRGBO(243, 237, 228, 0),
        ],
      ).createShader(
        Rect.fromCircle(
          center: const Offset(0, 0),
          radius: size.width,
        ),
      );
    if (image != null || image2 != null || image3 != null) {
      canvas.save();
      /* rotate(
          canvas: canvas,
          cx: image!.width.toDouble() / 2,
          cy: image!.height.toDouble() / 2,
          angle: -0.3); */
      // canvas.scale((kCanvasSize -10) / image!.height);
      canvas.drawImage(
        image!,
        Offset(size.width / 2, 0),
        brush,
      );
      canvas.drawImage(
        image2!,
        Offset(
          -(size.width / 12),
          size.height / 1.2,
        ),
        brush,
      );
      canvas.drawImage(
        image3!,
        Offset(
          size.width / 1.5,
          size.height / 1.15,
        ),
        brush,
      );
      canvas.restore();
    }
    canvas.save();
    //rotate(canvas: canvas, cx: 200 + 50, cy: 100 + 50, angle: 0.5);
    //canvas.drawRect(Rect.fromLTWH(200, 100, 100, 100), greenBrush);
    canvas.restore();
  }

  void rotate(
      {required Canvas canvas,
        required double cx,
        required double cy,
        required double angle}) {
    canvas.translate(cx, cy);
    canvas.rotate(angle);
    canvas.translate(-cx, -cy);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}



Future<ui.Image> loadUiImage(String imageAssetPath) async {
  final ByteData data = await rootBundle.load(imageAssetPath);
  final Completer<ui.Image> completer = Completer();
  ui.decodeImageFromList(Uint8List.view(data.buffer), (ui.Image img) {
    return completer.complete(img);
  });
  return completer.future;
}

import 'package:flutter/material.dart';

import 'constants.dart';
import 'dotted_line_painter.dart';

class LocationsSeparator extends StatelessWidget {
  const LocationsSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 8,
        ),
        CustomPaint(
          painter: VerticalDottedLinePainter(),
          size: const Size(1, 18),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: Container(
            height: 1,
            color: greyColor1,
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

import 'constants.dart';

class YellowBox extends StatelessWidget {
  const YellowBox({
    super.key,
    required this.cardWidth,
    required this.cardHeight,
    this.color = yellowColor,
  });

  final double cardWidth;
  final double cardHeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
    );
  }
}
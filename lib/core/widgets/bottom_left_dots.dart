import 'package:flutter/material.dart';
import 'package:social_network/core/widgets/dots_widget.dart';

class BottomLeftDots extends DotsWidget {
  const BottomLeftDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(bottom: 10, left: 10, child: super.build(context));
  }
}

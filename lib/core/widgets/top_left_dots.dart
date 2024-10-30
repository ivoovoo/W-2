import 'package:flutter/material.dart';
import 'package:social_network/core/widgets/dots_widget.dart';

class TopLeftDots extends DotsWidget {
  const TopLeftDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(top: 10, left: 10, child: super.build(context));
  }
}

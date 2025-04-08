import 'package:flutter/material.dart';

class GradientProgressBar extends StatelessWidget {
  ///it can be anything between 0 to 100
  final int percent;
  final LinearGradient gradient;

  const GradientProgressBar(
      {required this.percent, required this.gradient, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: percent <= 10 ? 0 : percent,
          child: Container(
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: const BorderRadius.all(
                Radius.circular(32),
              ),
            ),
            child: const SizedBox(height: double.infinity),
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 100 - percent <= 10 ? 0 : percent,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(32),
              ),
            ),
            child: const SizedBox(height: double.infinity),
          ),
        ),
      ],
    );
  }
}

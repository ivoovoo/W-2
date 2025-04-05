import 'package:flutter/material.dart';
import 'package:social_network/taxi/components/yellow_box.dart';

import 'constants.dart';
import 'information_block.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    super.key,
    this.carBackColor,
    required this.imageAsset,
  });

  final Color? carBackColor;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    final overallWidth = MediaQuery.of(context).size.width * 0.65;
    final yellowCardWidth = overallWidth * 0.75;
    final yellowCardHeight = yellowCardWidth / 3;

    return SizedBox(
      width: overallWidth,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: greyColor1,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Padding(
                padding: EdgeInsets.only(top: yellowCardHeight),
                child: const InformationBlock(),
              ),
            ),
          ),
          YellowBox(
            cardWidth: yellowCardWidth,
            cardHeight: yellowCardHeight,
            color: carBackColor ?? yellowColor,
          ),
          Positioned(
              left: yellowCardWidth * 0.1,
              top: -yellowCardHeight * 0.25,
              child: Image.asset(
                imageAsset,
                width: yellowCardWidth * 0.8,
              ))
        ],
      ),
    );
  }
}
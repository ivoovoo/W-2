import 'package:flutter/material.dart';

import 'constants.dart';

class DestinationsBlock extends StatelessWidget {
  const DestinationsBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hotel Tiquetonne',
          style: TextStyle(
            fontFamily: 'font',
            fontSize: 16,
            color: greyColor2,
            fontVariations: [
              FontVariation.opticalSize(56),
              FontVariation.width(128),
              FontVariation.weight(500),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          height: 1,
          color: greyColor1,
        ),
        const SizedBox(
          height: 9,
        ),
        const Text(
          'Angelina Paris Cafe',
          style: TextStyle(
            fontFamily: 'font',
            fontSize: 16,
            color: blackColor,
            fontVariations: [
              FontVariation.opticalSize(56),
              FontVariation.width(128),
              FontVariation.weight(500),
            ],
          ),
        ),
      ],
    );
  }
}

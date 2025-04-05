import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class InformationBlock extends StatelessWidget {
  const InformationBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Comfort',
              style: TextStyle(
                fontFamily: 'font',
                fontSize: 16,
                color: blackColor,
                fontVariations: [
                  FontVariation.opticalSize(56),
                  FontVariation.width(128),
                  FontVariation.weight(600),
                ],
              ),
            ),
            Text(
              '\$8.50',
              style: TextStyle(
                fontFamily: 'font',
                fontSize: 16,
                color: blackColor,
                fontVariations: [
                  FontVariation.opticalSize(56),
                  FontVariation.width(128),
                  FontVariation.weight(600),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          children: [
            const Text(
              '3 min',
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
              width: 20,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/user.svg'),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  '4',
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
              ],
            ),
          ],
        ),
      ],
    );
  }
}

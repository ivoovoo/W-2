import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class DebitCardRow extends StatelessWidget {
  const DebitCardRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: greyColor1), borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/mastercard.svg'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  '**** 0872',
                  style: TextStyle(
                    fontFamily: 'font',
                    fontSize: 16,
                    color: greyColor2,
                    fontVariations: [
                      FontVariation.opticalSize(56),
                      FontVariation.width(128),
                      FontVariation.weight(600),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              'Change',
              style: TextStyle(
                fontFamily: 'font',
                fontSize: 16,
                color: greyColor2,
                fontVariations: [
                  FontVariation.opticalSize(56),
                  FontVariation.width(128),
                  FontVariation.weight(600),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

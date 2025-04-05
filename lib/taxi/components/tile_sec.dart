import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class TileSec extends StatelessWidget {
  const TileSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: greyColor1, width: 1),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'UGC Cine Cite Halles',
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
            const SizedBox(
              height: 8,
            ),
            const Text(
              '20 min',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/map.png',
                  width: 24,
                  height: 24,
                ),
                SvgPicture.asset('assets/camera.svg'),
              ],
            ),
            // SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}

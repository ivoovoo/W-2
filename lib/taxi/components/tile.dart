import 'package:flutter/material.dart';

import 'constants.dart';

class Tile extends StatelessWidget {
  const Tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFFFDC71),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(16)),
              child: Image.asset('assets/coffee.png'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Angelina Paris Cafe',
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
                SizedBox(
                  height: 8,
                ),
                Text(
                  '13 min',
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
                // SizedBox(height: 500,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

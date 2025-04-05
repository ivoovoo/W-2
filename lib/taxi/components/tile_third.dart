import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/taxi/components/small_map.dart';

class TileThird extends StatelessWidget {
  const TileThird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,
        gradient: const LinearGradient(
          colors: [
            Color(0xFF151513),
            Color(0xFF8A7002),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      //root column
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //first row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/bones.svg'),
                      const SizedBox(
                        width: 16,
                      ),
                      const Expanded(
                        child: Text(
                          'Places near you',
                          style: TextStyle(
                            height: 0.9,
                            fontFamily: 'font',
                            fontSize: 24,
                            color: Colors.white,
                            fontVariations: [
                              FontVariation.opticalSize(56),
                              FontVariation.width(128),
                              FontVariation.weight(600),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'GO!',
                            style: TextStyle(
                              height: 1,
                              fontFamily: 'font',
                              fontSize: 24,
                              color: Colors.white,
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
                          SvgPicture.asset('assets/arrow.svg'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            //second row
            const Row(
              children: [
                Expanded(
                  child: SmallMap(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
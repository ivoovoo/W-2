import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';
import 'go_button.dart';

class WhereToRow extends StatelessWidget {
  const WhereToRow({
    super.key,
    this.onGoTap,
  });

  final void Function()? onGoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 1,
          color: greyColor1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24, right: 14),
                child: SvgPicture.asset('assets/location.svg'),
              ),
              const Text(
                'Where to?',
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
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 2, top: 2, bottom: 2),
                child: GoButton(
                  onTap: onGoTap,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

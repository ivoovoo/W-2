import 'package:flutter/material.dart';

import 'constants.dart';

class ButtonWithTitle extends StatelessWidget {
  const ButtonWithTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: blackColor,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          child: Text(
            textAlign: TextAlign.center,
            'Order now',
            style: TextStyle(
              fontFamily: 'font',
              fontSize: 16,
              color: Colors.white,
              fontVariations: [
                FontVariation.opticalSize(56),
                FontVariation.width(128),
                FontVariation.weight(600),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

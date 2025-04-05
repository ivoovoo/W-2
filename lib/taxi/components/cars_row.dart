import 'package:flutter/material.dart';

import 'constants.dart';
import 'car_card.dart';

class CarsRow extends StatelessWidget {
  const CarsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Wrap(
          clipBehavior: Clip.none,
          spacing: 22,
          children: List.generate(3, (index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 16 : 0, right: index == 2 ? 16 : 0),
              child: CarCard(
                carBackColor: index != 0 ? greyColor1 : yellowColor,
                imageAsset: 'assets/black_car.png',
              ),
            );
          }),
        ),
      ),
    );
  }
}
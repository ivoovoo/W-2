import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Style/style.dart';

class WalkSleepWidget extends StatelessWidget {
  final String name;
  final String description;
  final String svgPath;

  const WalkSleepWidget({
    super.key,
    required this.name,
    required this.description,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 57,
          height: 57,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: Center(child: SvgPicture.asset(svgPath)),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Style().montserrat_stl.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Text(
              description,
              style: Style().montserrat_stl.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

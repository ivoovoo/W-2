import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';

class IdRowWidget extends StatelessWidget {
  const IdRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 23, 27, 12),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'iD 9310 😇',
          style: getStyle(
              fontSize: 20,
              height: 28 / 20,
              fontWeight: FontWeight.w500,
              color: HexColor('#171717')),
        ),
        Container(
            height: 20 * rw(context),
            width: 20 * rw(context),
            decoration: const BoxDecoration(
                color: Colors.black, shape: BoxShape.circle),
            child: SvgPicture.asset(
              'assets/track_icon.svg',
              fit: BoxFit.none,
            ))
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';

class DotsWidget extends StatelessWidget {
  const DotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3 * 8 * rw(context) + 2 * 4 * rw(context) + 11 * 2 * rw(context),
      width: (8 + 6 * 2) * rw(context),
      decoration: BoxDecoration(
          color: HexColor('#FFFFFF').withOpacity(0.2),
          borderRadius: BorderRadius.circular(16)),
      child: Align(
        child: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Container(
                  height: 8 * rw(context),
                  width: 8 * rw(context),
                  margin:
                      EdgeInsets.only(top: index == 0 ? 0 : 4 * rw(context)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0
                          ? HexColor('#FFFFFF')
                          : HexColor('#FFFFFF').withOpacity(0.25)),
                )),
      ),
    );
  }
}

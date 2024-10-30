import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';

class ViewedRowWidget extends StatelessWidget {
  const ViewedRowWidget({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          count.toString(),
          style: getStyle(
              fontSize: 12,
              height: 18 / 12,
              fontWeight: FontWeight.w500,
              color: HexColor('#000000')),
        ),
        const SizedBox(width: 8),
        Image.asset(
          'assets/eye_icon.png',
          color: HexColor('#000000'),
        ),
        const SizedBox(width: 8),
        Image.asset(
          'assets/message_icon.png',
          color: HexColor('#000000'),
        ),
      ],
    );
  }
}

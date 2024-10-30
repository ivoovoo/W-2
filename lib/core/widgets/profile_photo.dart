import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto(
      {required this.photo, this.height, this.isActive = false, super.key});

  final String photo;
  final double? height;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 62 * rw(context),
      width: height ?? 62 * rw(context),
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              photo,
              fit: BoxFit.fill,
            ),
          ),
          if (isActive)
            Positioned(
                bottom: 0,
                right: 8,
                child: Container(
                  height: 12 * rw(context),
                  width: 12 * rw(context),
                  padding: EdgeInsets.all(2 * rw(context)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: HexColor('#FFFFFF')),
                  child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green)),
                ))
        ],
      ),
    );
  }
}

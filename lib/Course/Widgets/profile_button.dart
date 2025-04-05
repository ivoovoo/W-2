import 'dart:ui';

import 'package:flutter/material.dart';

import '../Style/style.dart';

class ProfileButton extends StatelessWidget {
  final String path;
  final String name;
  final String desc;

  const ProfileButton({
    super.key,
    required this.path,
    required this.name,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Image.asset(path),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Style().poppins_stl.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              Text(
                desc,
                style: Style().poppins_stl.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(235, 245, 245, 0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

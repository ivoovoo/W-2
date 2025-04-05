import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Style/style.dart';

class WarmUpWidget extends StatelessWidget {
  final String name;
  final String description;

  const WarmUpWidget({
    super.key,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
      child: Row(
        children: [
          SvgPicture.asset('assets/Ellipse 16.svg'),
          SizedBox(width: 35),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Style().montserrat_stl.copyWith(fontSize: 13)),
              Text(
                description,
                style: Style().montserrat_stl.copyWith(
                  fontSize: 10,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BillWidget extends StatelessWidget {
  final String svgPath;
  final String name;
  final String trc;

  const BillWidget({
    super.key,
    required this.svgPath,
    required this.name,
    required this.trc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          SvgPicture.asset(svgPath),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(8, 36, 49, 0.5),
                ),
              ),
              Text(
                trc,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color.fromRGBO(44, 44, 99, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowWidgetBalance extends StatelessWidget {
  final String svgPath;
  final String name;
  final String date;
  final String usdt;
  final String description;

  const RowWidgetBalance({
    super.key,
    required this.svgPath,
    required this.name,
    required this.date,
    required this.usdt,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(svgPath),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(39, 50, 64, 1),
                    ),
                  ),
                  SizedBox(height: 5),

                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(44, 58, 75, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                usdt,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(39, 50, 64, 1),
                ),
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(44, 58, 75, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListViewElement extends StatelessWidget {
  final String svgPath;
  final String name;
  final String usdt;
  final String trc;

  const ListViewElement({
    super.key,
    required this.svgPath,
    required this.name,
    required this.usdt,
    required this.trc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        height: 142,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(svgPath),
                      SizedBox(width: 10),
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color.fromRGBO(44, 44, 99, 1),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    usdt,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(82, 82, 142, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'COPY ADRESS',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(82, 82, 142, 1),
                ),
              ),
              SizedBox(height: 5),
              Text(
                trc,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(44, 58, 75, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

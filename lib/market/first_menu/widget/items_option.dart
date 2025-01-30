import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Theme/style.dart';

class RowOptionWidget extends StatelessWidget {
  final String name;
  final String cost;
  final String imgPath;
  final String description1;
  final String description2;
  final String svgPath1;
  final String svgPath2;

  const RowOptionWidget({
    Key? key,
    required this.name,
    required this.cost,
    required this.description1,
    required this.description2,
    required this.imgPath,
    required this.svgPath1,
    required this.svgPath2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imgPath),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: Style.AppBarTxtStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              Text(
                cost,
                style: Style.AppBarTxtStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
              Row(
                children: [
                  SvgPicture.asset(svgPath1),
                  SizedBox(width: 5),
                  Text(
                    description1,
                    style: Style.AppBarTxtStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset(svgPath2),
                  SizedBox(width: 5),
                  Text(
                    description2,
                    style: Style.AppBarTxtStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowElement extends StatelessWidget {
  final String name;
  final String svgPath;
  final String time;
  final String number;

  const RowElement({
    super.key,
    required this.name,
    required this.svgPath,
    required this.time,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10,),
              Container(height:34,width:34,child: Image.asset(svgPath)),
              SizedBox(width: 10,),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10,),
              SvgPicture.asset('assets/Icon_Dots.svg'),
            ],
          ),
        ],
      ),
    );
  }
}

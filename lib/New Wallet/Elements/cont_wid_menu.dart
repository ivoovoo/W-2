import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContWidgetMenu extends StatelessWidget {
  final String svgPath;
  final String text;

  const ContWidgetMenu({super.key, required this.svgPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.grey, width: 0.1),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SvgPicture.asset(svgPath),
            SizedBox(width: 15),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(39, 50, 64, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

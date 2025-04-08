import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ColumnWidget extends StatelessWidget {
  final String path;
  final String text;
  const ColumnWidget({
    super.key, required this.path, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(path),
        const SizedBox(height: 10,),
        Text(text,style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
          color: Colors.black,
        ),),
      ],
    );
  }
}

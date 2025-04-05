import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListWidget extends StatelessWidget {
  final String path;
  final String name;
  const ListWidget({
    super.key, required this.path, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 110,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(path),
            SizedBox(width: 10),
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(138, 141, 159, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

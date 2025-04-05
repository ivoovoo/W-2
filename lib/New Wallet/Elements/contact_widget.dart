import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final String imgPath;
  final String name;
  final String trc;

  const ContactWidget({
    super.key,
    required this.imgPath,
    required this.name,
    required this.trc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Image.asset(imgPath),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color.fromRGBO(39, 50, 64, 1),
                ),
              ),
              Text(
                trc,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color.fromRGBO(44, 58, 75, 0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

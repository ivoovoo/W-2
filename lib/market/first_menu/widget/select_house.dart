import 'package:flutter/material.dart';

class SelectHouse extends StatelessWidget {
  final String distanceText;
  final String imagePath;
  final String nameOfHouse;
  final String descriptionOfHouse;
  final double width;

  const SelectHouse({
    super.key,
    required this.imagePath,
    required this.distanceText,
    required this.nameOfHouse,
    required this.descriptionOfHouse,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: width,
      ),
      // child: Container(
      //   width: 228,
      //   // height: 272,
      //   decoration: BoxDecoration(
      //     color: Colors.red,
      //     image: DecorationImage(
      //       image: AssetImage(imagePath),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),
    );
  }
}

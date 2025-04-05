import 'package:flutter/material.dart';

import '../Style/style.dart';

class TrackHistoryWidget extends StatelessWidget {
  final String imgPath;
  final String name;
  final String description;

  const TrackHistoryWidget({
    super.key,
    required this.imgPath,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(imgPath),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: Style().poppins_stl.copyWith(color: Colors.black),
                        ),
                        Text(
                          description,
                          style: Style().poppins_stl.copyWith(
                            color: Color.fromRGBO(121, 121, 121, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
      ),
    );
  }
}


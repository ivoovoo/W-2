import 'package:flutter/material.dart';

import '../Style/style.dart';

class FollowWidget extends StatelessWidget {
  final String name;
  final String time;

  const FollowWidget({super.key, required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: double.infinity,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(246, 247, 250, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset('assets/Base Background2.png'),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Style().poppins_stl.copyWith(
                      fontSize: 14,
                      color: Color.fromRGBO(48, 48, 48, 1),
                    ),
                    overflow: TextOverflow.visible,
                  ),
                  Text(
                    time,
                    style: Style().poppins_stl.copyWith(
                      fontSize: 14,
                      color: Color.fromRGBO(48, 48, 48, 0.5),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

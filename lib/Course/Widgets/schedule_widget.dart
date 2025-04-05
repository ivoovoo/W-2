import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Style/style.dart';

class ScheduleWidget extends StatelessWidget {
  final String date;
  final String name;

  final String description;
  final String path;
  final Color colorgr1;
  final Color colorgr2;
  final Color color3;

  const ScheduleWidget({
    super.key,
    required this.date,
    required this.name,
    required this.description,
    required this.path,
    required this.colorgr1,
    required this.colorgr2,
    required this.color3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: color3,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(child: SvgPicture.asset('assets/Path.svg')),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [colorgr1, colorgr2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          date,
                          style: Style().poppins_stl.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          name,
                          style: Style().montserrat_stl.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          description,
                          style: Style().montserrat_stl.copyWith(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 41,
                      height: 41,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(child: SvgPicture.asset(path)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

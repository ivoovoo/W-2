import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Style/style.dart';
import '../../../Widgets/follow_widget.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(246, 246, 246, 1),
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Color.fromRGBO(0, 157, 255, 1),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Course Details',
                        style: Style().poppins_stl.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SvgPicture.asset('assets/heart_outline.svg'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage('assets/Base Background.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(Icons.play_arrow, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Step design sprint for\nbeginner',
                    style: Style().poppins_stl.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        width: 55,
                        height: 19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromRGBO(77, 201, 209, 1),
                        ),
                        child: Center(
                          child: Text(
                            '6 lessons',
                            style: Style().poppins_stl.copyWith(fontSize: 10),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 55,
                        height: 19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromRGBO(0, 130, 205, 1),
                        ),
                        child: Center(
                          child: Text(
                            'Design',
                            style: Style().poppins_stl.copyWith(fontSize: 10),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 55,
                        height: 19,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color.fromRGBO(141, 94, 242, 1),
                        ),
                        child: Center(
                          child: Text(
                            'Free',
                            style: Style().poppins_stl.copyWith(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'In this course I\'ll show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.',
                    style: Style().poppins_stl.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(157, 159, 160, 1),
                    ),
                    overflow: TextOverflow.visible,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/Avatar2.png'),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Laurel Seilha',
                                style: Style().poppins_stl.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Product Designer',
                                style: Style().poppins_stl.copyWith(
                                  color: Colors.black.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                color: Color.fromRGBO(140, 140, 140, 1),
                                size: 20,
                              ),
                              Text(
                                '  5h 21m',
                                style: Style().poppins_stl.copyWith(
                                  fontSize: 10,
                                  color: Color.fromRGBO(140, 140, 140, 1),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 86,
                            height: 23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color.fromRGBO(252, 204, 117, 1),
                            ),
                            child: Center(
                              child: Text(
                                'Free e-book',
                                style: Style().poppins_stl.copyWith(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  FollowWidget(
                    name:
                        'How to get feedback on their\nproducts in just 5 daysc',
                    time: '04:10m',
                  ),
                  FollowWidget(
                    name:
                        'How to get feedback on their\nproducts in just 5 daysc',
                    time: '04:10m',
                  ),
                  FollowWidget(
                    name:
                        'How to get feedback on their\nproducts in just 5 daysc',
                    time: '04:10m',
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              left: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: Container(
                          height: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: 70,
                                          height: 41,
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                              0,
                                              157,
                                              255,
                                              1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Step 1',
                                              style: Style().poppins_stl
                                                  .copyWith(fontSize: 14),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: 70,
                                          height: 41,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Step 2',
                                              style: Style().poppins_stl
                                                  .copyWith(
                                                    color: Color.fromRGBO(
                                                      0,
                                                      157,
                                                      255,
                                                      1,
                                                    ),
                                                    fontSize: 14,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: 70,
                                          height: 41,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              100,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Step 3',
                                              style: Style().poppins_stl
                                                  .copyWith(
                                                    fontSize: 14,
                                                    color: Color.fromRGBO(
                                                      0,
                                                      157,
                                                      255,
                                                      1,
                                                    ),
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset('assets/s1.png'),
                                    Image.asset('assets/s2.png'),
                                    Image.asset('assets/s3.png'),
                                    Image.asset('assets/s4.png'),
                                  ],
                                ),
                                Text(
                                  'Schedule date & time',
                                  style: Style().poppins_stl.copyWith(
                                    fontSize: 14,
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: value,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          value =
                                              newValue ??
                                              false;
                                        });
                                      },
                                    ),
                                    Text('12 October, 2025 at 09.45 AM',style: Style().poppins_stl.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(157, 159, 159, 1),
                                    ),),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Закрываем модальное окно
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 53,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color.fromRGBO(0, 157, 255, 1),
                                    ),
                                    child: Center(
                                      child: Text('Start', style: Style().poppins_stl),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromRGBO(0, 157, 255, 1),
                  ),
                  child: Center(
                    child: Text('Follow class', style: Style().poppins_stl),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

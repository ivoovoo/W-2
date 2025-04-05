import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  final int tab;

  const MainPage({
    super.key,
    required this.tab,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ENGLISH',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),),
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromRGBO(255, 191, 182, 1),
                  ),
                  child: Image.asset('assets/11-2.png'),
                ),
              ],
            ),
            // Text(
            //   'Your\nLearnings',
            //   style: TextStyle(
            //     fontWeight: FontWeight.w700,
            //     fontSize: 52,
            //     color: Color.fromRGBO(117, 48, 39, 1),
            //     fontFamily: 'Playfair',
            //   ),
            // ),
            SvgPicture.asset('assets/Vector 372.svg'),
            CustomSlidingSegmentedControl<int>(
              height: 47,
              isStretch: true,
              initialValue: 2,
              children: {
                1: Text(
                  'Learn',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(117, 48, 39, 1),
                  ),
                ),
                2: Text(
                  'Translate',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(117, 48, 39, 1),
                  ),
                ),
                3: Text(
                  'Word list',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(117, 48, 39, 1),
                  ),
                ),
              },
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              thumbDecoration: BoxDecoration(
                color: Color.fromRGBO(243, 228, 224, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.3),
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      0.0,
                      1.0,
                    ),
                  ),
                ],
              ),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInToLinear,
              onValueChanged: (v) {
                print(v);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Color.fromRGBO(104, 13, 1, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Challange',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color.fromRGBO(225, 101, 86, 1),
                          ),
                        ),
                        Text(
                          'November\nMonth',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('assets/Group 8782.png'),
                      ],
                    ),
                    Image.asset('assets/Group 8788.png'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Color.fromRGBO(243, 130, 115, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Achievement',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color.fromRGBO(255, 213, 207, 1),
                          ),
                        ),
                        Text(
                          'Daily\nEnglish',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(101, 12, 1, 1),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/Fire.png'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '1 Day',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color.fromRGBO(169, 89, 77, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset('assets/Group 8789.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

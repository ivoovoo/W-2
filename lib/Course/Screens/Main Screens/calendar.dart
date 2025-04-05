
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Wallet/Screens/profile.dart';
import '../../Style/style.dart';
import '../../Widgets/bar_chart1.dart';
import '../../Widgets/bar_chart2.dart';
import '../../Widgets/walk_sleep.dart';
import '../Secondary Screens/Live Desing/calendar_2_screen.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Weekly Average',
                          style: Style().montserrat_stl.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '102 CAL',
                          style: Style().montserrat_stl.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 49,
                      height: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(255, 201, 233, 1),
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/Arrow 1.svg'),
                      ),
                    ),
                  ],
                ),
                Image.asset('assets/a1.png'),
              ],
            ),
            SizedBox(height: 30),
            CustomSlidingSegmentedControl<int>(
              isStretch: true,
              padding: 10,
              height: 86,
              children: {
                0: Text(
                  'Day',
                  style: Style().montserrat_stl.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:
                    _selectedSegment == 0
                        ? Colors.white
                        : Color.fromRGBO(38, 33, 53, 1),
                  ),
                ),
                1: Text(
                  'Week',
                  style: Style().montserrat_stl.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:
                    _selectedSegment == 1
                        ? Colors.white
                        : Color.fromRGBO(38, 33, 53, 1),
                  ),
                ),
                2: Text(
                  'Month',
                  style: Style().montserrat_stl.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color:
                    _selectedSegment == 2
                        ? Colors.white
                        : Color.fromRGBO(38, 33, 53, 1),
                  ),
                ),
              },
              onValueChanged: (value) {
                setState(() {
                  _selectedSegment = value;
                });
              },
              initialValue: _selectedSegment,
              thumbDecoration: BoxDecoration(
                color: Color.fromRGBO(38, 33, 53, 1),
                borderRadius: BorderRadius.circular(100),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(211, 232, 232, 0.7),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color.fromRGBO(38, 33, 53, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calendar2Screen()));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 335,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(245, 242, 184, 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Calories',style: Style().montserrat_stl.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                      Text('50 cal',style: Style().montserrat_stl.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black
                                      ),),
                                    ],
                                  ),
                                ),
                                BarChartSample2(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                              },
                              child: Container(
                                width: double.infinity,
                                height: 215,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color.fromRGBO(211, 232, 232, 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      WalkSleepWidget(
                                        name: 'Walk',
                                        description: '2.67 km',
                                        svgPath: 'assets/run.svg',
                                      ),
                                      SvgPicture.asset('assets/Group 298.svg'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              height: 215,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromRGBO(232, 232, 232, 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    WalkSleepWidget(
                                      name: 'Sleep',
                                      description: '8:12',
                                      svgPath: 'assets/moon.svg',
                                    ),
                                    BarChartSample1(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
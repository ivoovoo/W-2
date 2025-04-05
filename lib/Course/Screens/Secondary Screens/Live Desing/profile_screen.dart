import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Style/style.dart';
import '../../../Widgets/bar_chart_3.dart';
import '../../../Widgets/profile_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 450,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(255, 37, 180, 1),
                        Color.fromRGBO(58, 52, 100, 1),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color.fromRGBO(253, 13, 146, 1),
                          ),
                          borderRadius: BorderRadius.circular(200),
                        ),
                        child: Center(child: Image.asset('assets/img.png')),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Mophsic',
                        style: Style().poppins_stl.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Beijing Haidian-District',
                        style: Style().poppins_stl.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ProfileButton(
                            path: 'assets/Frame 41.png',
                            name: '165.0 CM',
                            desc: 'Height',
                          ),
                          ProfileButton(
                            path: 'assets/42.png',
                            name: '72 KG',
                            desc: 'Weight',
                          ),
                          ProfileButton(
                            path: 'assets/43.png',
                            name: '27.5 Year',
                            desc: 'Age',
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  color: Color.fromRGBO(58, 52, 100, 1),
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  width: double.infinity,
                  height: 1000,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Color.fromRGBO(255, 255, 255, 0.05),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: CustomSlidingSegmentedControl<int>(
                            height: 36,
                            padding: 20,
                            children: {
                              0: Text(
                                'WEEK',
                                style: Style().poppins_stl.copyWith(
                                  color:
                                      _selectedSegment == 0
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(210, 210, 210, 1),
                                ),
                              ),
                              1: Text(
                                'MONTH',
                                style: Style().poppins_stl.copyWith(
                                  color:
                                      _selectedSegment == 1
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(210, 210, 210, 1),
                                ),
                              ),
                              2: Text(
                                'All TIME',
                                style: Style().poppins_stl.copyWith(
                                  color:
                                      _selectedSegment == 2
                                          ? Color.fromRGBO(255, 255, 255, 1)
                                          : Color.fromRGBO(210, 210, 210, 1),
                                ),
                              ),
                            },
                            onValueChanged: (value) {
                              _selectedSegment = value;
                            },
                            initialValue: _selectedSegment,
                            thumbDecoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 169, 146, 1),
                                  Color.fromRGBO(253, 13, 146, 1),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 169, 146, 0.2),
                                  Color.fromRGBO(253, 13, 146, 0.2),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            height:300,child: BarChartSample3()),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Trainings',style: Style().poppins_stl.copyWith(
                              fontWeight: FontWeight.w700,
                            ),),
                            SvgPicture.asset('assets/dot.svg'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            initialChildSize: 0.5, // Начальный размер
            minChildSize: 0.5, // Минимальный размер
            maxChildSize: 1.0, // Максимальный размер
          ),
        ],
      ),
    );
  }
}


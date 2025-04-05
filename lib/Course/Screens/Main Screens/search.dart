import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Style/style.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late TabController _tabController;
  int _selectedSegment = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.lerp(
                    Color.fromRGBO(46, 47, 85, 1),
                    Color.fromRGBO(253, 13, 146, 1),
                    _animation.value,
                  ) ??
                      Colors.transparent,
                  Color.lerp(
                    Color.fromRGBO(253, 13, 146, 1),
                    Color.fromRGBO(35, 37, 60, 1),
                    _animation.value,
                  ) ??
                      Colors.transparent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Daniel Matt',
                            style: Style().source_stl.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'let\'s Get Exercise',
                            style: Style().source_stl.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Image.asset('assets/Top img 1.png'),
                        Image.asset('assets/Top img 1.png'),
                        Image.asset('assets/Top img 1.png'),
                      ],
                    ),
                  ),
                  TabBar(
                    dividerHeight: 1,
                    dividerColor: Colors.transparent,
                    indicatorColor: Color.fromRGBO(255, 13, 146, 1),
                    indicatorWeight: 3,
                    controller: _tabController,
                    tabs: [Tab(text: ''), Tab(text: ''), Tab(text: '')],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'TRAINING',
                    style: Style().poppins_stl.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomSlidingSegmentedControl<int>(
                    padding: 10,
                    height: 86,
                    children: {
                      0: Container(
                        width: 75,
                        height: 86,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/ic_Barbell.svg',color: _selectedSegment == 0 ? Colors.white : Color.fromRGBO(253, 13, 146, 1), ),
                            Text(
                              'Barbell',
                              style: Style().poppins_stl.copyWith(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      1:  Container(
                        width: 75,
                        height: 86,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/ic_pingpong.svg',color: _selectedSegment == 1 ? Colors.white : Color.fromRGBO(253, 13, 146, 1),),
                            Text(
                              'PingPong',
                              style: Style().poppins_stl.copyWith(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      2:  Container(
                        width: 75,
                        height: 86,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/ic_Fight.svg',color: _selectedSegment == 2 ? Colors.white : Color.fromRGBO(253, 13, 146, 1),),
                            Text(
                              'Fight',
                              style: Style().poppins_stl.copyWith(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      3:  Container(
                        width: 75,
                        height: 86,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/ic_ropeSkipping.svg',color: _selectedSegment == 3 ? Colors.white : Color.fromRGBO(253, 13, 146, 1),),
                            Text(
                              'Rope skipping',
                              style: Style().poppins_stl.copyWith(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    },
                    onValueChanged: (value) {
                      setState(() {
                        _selectedSegment = value!;
                      });
                    },
                    initialValue: _selectedSegment,
                    thumbDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(255, 169, 146, 1),
                          Color.fromRGBO(253, 13, 146, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('Todays',style: Style().source_stl.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,                    children: [
                    Column(
                      children: [
                        Image.asset('assets/Frame 19.png'),
                        SizedBox(height: 10,),
                        SvgPicture.asset('assets/Line 1.svg'),
                        SizedBox(height: 10,),
                        Image.asset('assets/Frame 29.png'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/Frame ss.svg'),
                              SizedBox(width: 10,),
                              Text('06:20    ',style: Style().source_stl.copyWith(
                                  fontWeight: FontWeight.w700
                              ),),
                              Text('07:30',style: Style().source_stl,),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: 234,
                            height: 92,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(255, 255, 255, 0.1),
                            ),
                            child: Center(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Morning jogging',style: Style().source_stl.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),),
                                Text('From Central Park to the top of\nNanshan Mountain',style: Style().source_stl,),
                              ],
                            )),
                          ),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              SvgPicture.asset('assets/Frame ss.svg'),
                              SizedBox(width: 10,),
                              Text('06:20    ',style: Style().source_stl.copyWith(
                                  fontWeight: FontWeight.w700
                              ),),
                              Text('07:30',style: Style().source_stl,),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
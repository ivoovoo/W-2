
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../features/call_screen/call_screen.dart';
import '../../Style/style.dart';
import '../Secondary Screens/Course Screens/course_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/Avatar.png'),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hallo, samuel!',
                          style: Style().poppins_stl.copyWith(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/award.svg'),
                            Text(
                              '  +1600 Coins',
                              style: Style().poppins_stl.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromRGBO(0, 157, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SvgPicture.asset('assets/notifications_black.svg'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallScreen()));
                  },
                  child: Image.asset('assets/h1.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallScreen()));

                  },
                  child: Image.asset('assets/h1.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallScreen()));

                  },
                  child: Image.asset('assets/h1.png'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallScreen()));

                  },
                  child: Image.asset('assets/h1.png'),
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomSlidingSegmentedControl<int>(
              children: {
                0: Text(
                  'All',
                  style: Style().poppins_stl.copyWith(
                    color:
                    _selectedSegment == 0
                        ? Colors.white
                        : Color.fromRGBO(157, 157, 157, 1),
                  ),
                ),
                1: Text(
                  'UI/UX',
                  style: Style().poppins_stl.copyWith(
                    color:
                    _selectedSegment == 1
                        ? Colors.white
                        : Color.fromRGBO(157, 157, 157, 1),
                  ),
                ),
                2: Text(
                  'Illustration',
                  style: Style().poppins_stl.copyWith(
                    color:
                    _selectedSegment == 2
                        ? Colors.white
                        : Color.fromRGBO(157, 157, 157, 1),
                  ),
                ),
                3: Text(
                  '3D Animation',
                  style: Style().poppins_stl.copyWith(
                    color:
                    _selectedSegment == 3
                        ? Colors.white
                        : Color.fromRGBO(157, 157, 157, 1),
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
                color: Color.fromRGBO(0, 157, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              height: 370,
              child: TabBarView(
                controller: _tabController,

                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CourseDetails()));
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/hbig.png'),
                              fit: BoxFit.contain
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CourseDetails()));
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/hbig.png'),
                              fit: BoxFit.contain
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CourseDetails()));
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/hbig.png'),
                              fit: BoxFit.contain
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
              dividerHeight: 1,
              dividerColor: Colors.transparent,
              indicatorColor: Color.fromRGBO(0, 157, 255, 1),
              indicatorWeight: 3,
              controller: _tabController,
              tabs: [Tab(text: ''), Tab(text: ''), Tab(text: '')],
            ),
          ],
        ),
      ),
    );
  }
}

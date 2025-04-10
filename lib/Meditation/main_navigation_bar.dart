import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/Meditation/screens/choose_topic_screen.dart';
import '../core/router/app_router.dart';
import 'screens/home_screen.dart';
import 'screens/meditate_screen.dart';
import 'screens/sleep_screen.dart';



class MainNavigationBarScreen extends StatefulWidget {
  const MainNavigationBarScreen({super.key});


  @override
  _MainNavigationBarScreenState createState() => _MainNavigationBarScreenState();
}

class _MainNavigationBarScreenState extends State<MainNavigationBarScreen> {
  int _selectedIndex = 0;

  // Список виджетов для каждой вкладки
  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SleepScreen(),
    MeditateScreen(),
    ChooseTopicScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                child: Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.transparent,
                  // decoration: _selectedIndex == 1
                  //     ? const BoxDecoration(
                  //         color: Color.fromRGBO(3, 23, 77, 1),
                  //       )
                  //     : const BoxDecoration(
                  //         color: Color.fromRGBO(255, 255, 255, 1),
                  //       ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            InkWell(
                                onTap: () {
                                  HapticFeedback.lightImpact();
                                  _onItemTapped(0);
                                },
                                onLongPress: () => openFullScreenModal(context),
                                child: _selectedIndex == 0
                                    ? Column(
                                        children: [
                                          Container(
                                            width: 46,
                                            height: 46,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              color:
                                                  Color.fromRGBO(142, 151, 253, 1),
                                            ),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                'assets/images/svg/home_button.svg',
                                                color: Colors.white,
                                                // color:_getColor3(_selectedIndex),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Home',
                                            style: TextStyle(
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  Color.fromRGBO(142, 151, 253, 1),
                                            ),
                                          ),
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          Container(
                                            width: 46,
                                            height: 46,
                                            child: Center(
                                              child: SvgPicture.asset(
                                                'assets/images/svg/home_button.svg',
                                                fit: BoxFit.cover,
                                                color: Color.fromRGBO(
                                                    160, 163, 177, 1),
                                                // color:_getColor3(_selectedIndex),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Home',
                                            style: TextStyle(
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  Color.fromRGBO(160, 163, 177, 1),
                                            ),
                                          ),
                                        ],
                                      )),
                          ],
                        ),
                        InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              _onItemTapped(1);
                            },
                            child: _selectedIndex == 1
                                ? Column(
                                    children: [
                                      Container(
                                        width: 46,
                                        height: 46,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(18),
                                          color: Color.fromRGBO(142, 151, 253, 1),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                            'assets/images/svg/sleep_button.svg',
                                            color: Colors.white,
                                            // color:_getColor3(_selectedIndex),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Sleep',
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(142, 151, 253, 1),
                                        ),
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Container(
                                        width: 46,
                                        height: 46,
                                        child: Center(
                                          child: SvgPicture.asset(
                                            'assets/images/svg/sleep_button.svg',
                                            color: Color.fromRGBO(160, 163, 177, 1),
                                            // color:_getColor3(_selectedIndex),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Sleep',
                                        style: TextStyle(
                                          fontFamily: 'HelveticaNeue',
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(160, 163, 177, 1),
                                        ),
                                      ),
                                    ],
                                  )),
                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            _onItemTapped(2);
                          },
                          child: _selectedIndex == 2
                              ? Column(
                                  children: [
                                    Container(
                                      width: 46,
                                      height: 46,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: Color.fromRGBO(142, 151, 253, 1),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          'assets/images/svg/meditate_button.svg',
                                          color: Colors.white,
                                          // color:_getColor3(_selectedIndex),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Meditate',
                                      style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(142, 151, 253, 1),
                                      ),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    Container(
                                      width: 46,
                                      height: 46,
                                      child: Center(
                                        child: SvgPicture.asset(
                                          'assets/images/svg/meditate_button.svg',
                                          color: Color.fromRGBO(160, 163, 177, 1),
                                          // color:_getColor3(_selectedIndex),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Meditate',
                                      style: TextStyle(
                                        fontFamily: 'HelveticaNeue',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(160, 163, 177, 1),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            _onItemTapped(3);
                          },
                          // onTap: null,
                          child: _selectedIndex == 3
                              ? Column(
                            children: [
                              Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Color.fromRGBO(142, 151, 253, 1),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/svg/music_button.svg',
                                    color: Colors.white,
                                    // color:_getColor3(_selectedIndex),
                                  ),
                                ),
                              ),
                              Text(
                                'Music',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(142, 151, 253, 1),
                                ),
                              ),
                            ],
                          )
                              : Column(
                            children: [
                              Container(
                                width: 46,
                                height: 46,
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/svg/music_button.svg',
                                    color: Color.fromRGBO(160, 163, 177, 1),
                                    // color:_getColor3(_selectedIndex),
                                  ),
                                ),
                              ),
                              Text(
                                'Music',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(160, 163, 177, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          // onTap: () {
                          //   HapticFeedback.lightImpact();
                          //   _onItemTapped(4);
                          // },
                          onTap: null,
                          child: _selectedIndex == 4
                              ? Column(
                            children: [
                              Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Color.fromRGBO(142, 151, 253, 1),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/svg/afsar_button.svg',
                                    color: Colors.white,
                                    // color:_getColor3(_selectedIndex),
                                  ),
                                ),
                              ),
                              Text(
                                'Afsar',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(142, 151, 253, 1),
                                ),
                              ),
                            ],
                          )
                              : Column(
                            children: [
                              Container(
                                width: 46,
                                height: 46,
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/images/svg/afsar_button.svg',
                                    color: Color.fromRGBO(160, 163, 177, 1),
                                    // color:_getColor3(_selectedIndex),
                                  ),
                                ),
                              ),
                              Text(
                                'Afsar',
                                style: TextStyle(
                                  fontFamily: 'HelveticaNeue',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(160, 163, 177, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

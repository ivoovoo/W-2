import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/router/app_router.dart';
import '../Components/triangle_notch_painter.dart';
import '../Screens/boarding_pass.dart';
import '../Screens/home.dart';
import '../Screens/your_flight.dart';

class MainMenuScreenFlight extends StatefulWidget {
  @override
  _MainMenuScreenFlightState createState() => _MainMenuScreenFlightState();
}

class _MainMenuScreenFlightState extends State<MainMenuScreenFlight> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    YourFlight(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
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
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      // border: Border(
                      //   top: BorderSide(
                      //     color: Colors.black.withOpacity(0.3),
                      //     width: 0.3,
                      //   ),
                      // ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            _onItemTapped(0);
                          },
                          onLongPress: () => openFullScreenModal(context),
                          child: SvgPicture.asset(
                            'assets/fly.svg',
                            color: Colors.black,
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            _onItemTapped(1);
                          },
                          child: SvgPicture.asset(
                            'assets/ticket.svg',
                            color: Colors.black,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            _onItemTapped(2);
                          },
                          child: Center(
                            child: Image.asset('assets/Location.png'),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            _onItemTapped(3);
                          },
                          child: SvgPicture.asset(
                            'assets/message.svg',
                            color: Colors.black,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            HapticFeedback.lightImpact();
                            _onItemTapped(4);
                          },
                          child: SvgPicture.asset(
                            'assets/person.svg',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Positioned(
                  //   top: 0,
                  //   right: 0,
                  //   left: 0,
                  //   child: CustomPaint(
                  //     size: Size(100, 100), // Размер треугольника
                  //     painter: TriangleNotchPainter(),
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 10,
                  //   right: 0,
                  //   left: 0,
                  //   child: InkWell(
                  //     onTap: () {
                  //       HapticFeedback.lightImpact();
                  //       _onItemTapped(2);
                  //     },
                  //     child: Center(child: Image.asset('assets/Location.png')),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

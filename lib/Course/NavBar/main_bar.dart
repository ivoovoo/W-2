import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/router/app_router.dart';
import '../Screens/Main Screens/calendar.dart';
import '../Screens/Main Screens/home.dart';
import '../Screens/Main Screens/notifications.dart';
import '../Screens/Main Screens/search.dart';
import '../Screens/Main Screens/track.dart';

class MainMenuScreen extends StatefulWidget {
  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int _selectedIndex = 0;

  // Список виджетов для каждой вкладки
  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Search(),
    Track(),
    Calendar(),
    Notifications(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getColor1(int index) {
    switch (index) {
      case 0:
        return Color.fromRGBO(0, 157, 255, 1);
      case 1:
        return Colors.white;
      case 2:
        return Colors.black;
      case 3:
        return Colors.white;
      case 4:
        return Colors.white;
      default:
        return Colors.white;
    }
  }
  Color _getColor2(int index) {
    switch (index) {
      case 0:
        return Colors.black;
      case 1:
        return Color.fromRGBO(240, 150, 180, 1);
      case 2:
        return Colors.black;
      case 3:
        return Colors.white;
      case 4:
        return Colors.white;
      default:
        return Colors.grey;
    }
  }
  Color _getColor3(int index) {
    switch (index) {
      case 0:
        return Colors.white;
      case 1:
        return Colors.white;
      case 2:
        return Color.fromRGBO(254, 185, 122, 1);
      case 3:
        return Colors.white;
      case 4:
        return Colors.white;
      default:
        return Colors.grey;
    }
  }
  Color _getColor4(int index) {
    switch (index) {
      case 0:
        return Colors.black;
      case 1:
        return Colors.white;
      case 2:
        return Colors.black;
      case 3:
        return Color.fromRGBO(240, 159, 178, 1);
      case 4:
        return Colors.white;
      default:
        return Colors.grey;
    }
  }
  Color _getColor5(int index) {
    switch (index) {
      case 0:
        return Colors.black;
      case 1:
        return Colors.white;
      case 2:
        return Colors.black;
      case 3:
        return Colors.white;
      case 4:
        return Color.fromRGBO(240, 159, 178, 1);
      default:
        return Colors.grey;
    }
  }
  Color _getColor6(int index) {
    switch (index) {
      case 0:
        return Color.fromRGBO(0, 157, 255, 1);
      case 1:
        return Color.fromRGBO(240, 150, 180, 1);
      case 2:
        return Colors.black;
      case 3:
        return Color.fromRGBO(240, 150, 180, 1);
      case 4:
        return Color.fromRGBO(240, 150, 180, 1);
      default:
        return Colors.white;
    }
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
            right: 10,
            left: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
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
                          'assets/Bag 2.svg',
                          color:_getColor1(_selectedIndex),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(1);
                        },
                        child: SvgPicture.asset(
                          'assets/Bag 3.svg',
                          color:_getColor2(_selectedIndex),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(2);
                        },
                        child: Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: _getColor6(_selectedIndex),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/Home_course.svg',
                              color:_getColor3(_selectedIndex),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(3);
                        },
                        child: SvgPicture.asset(
                          'assets/Calendar.svg',
                          color:_getColor4(_selectedIndex),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(4);
                        },
                        child: SvgPicture.asset(
                          'assets/Notification.svg',
                          color:_getColor5(_selectedIndex),
                        ),
                      ),
                    ],
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

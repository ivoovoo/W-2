import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network/crypto%20app/main%20screens/get_crypto.dart';
import 'package:social_network/crypto%20app/main%20screens/send_cryplo.dart';
import 'package:social_network/crypto%20app/main%20screens/swap_screen.dart';


import '../../core/router/app_router.dart';
import '../main screens/history_screen.dart';
import '../main screens/home.dart';

class MainScreenExchange extends StatefulWidget {
  @override
  _MainScreenExchangeState createState() => _MainScreenExchangeState();
}

class _MainScreenExchangeState extends State<MainScreenExchange> {
  int _selectedIndex = 0;

  // Список виджетов для каждой вкладки
 static const List<Widget> _widgetOptions = <Widget>[
    HomeScreenCrypto(),
    SendCryplo(),
    SwapScreen(),
    GetCrypto(),
    HistoryScreen(),

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
            bottom: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                      onLongPress:() => openFullScreenModal(context),
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(0);
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              'assets/images/svg/Home 1.svg',
                              color:
                              _selectedIndex == 0
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(1);
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              'assets/images/svg/Paper_Plane.svg',
                              color:
                              _selectedIndex == 1
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(2);
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              'assets/images/svg/Group 117.svg',
                              color:
                              _selectedIndex == 2
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(3);
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                              'assets/images/svg/Shield Yes.svg',
                              color:
                              _selectedIndex == 3
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          HapticFeedback.lightImpact();
                          _onItemTapped(4);
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              'assets/images/svg/Wallet.svg',
                              color:
                              _selectedIndex == 4
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   left: 0,
          //   child: ClipRRect(
          //     borderRadius: const BorderRadius.only(
          //       bottomRight: Radius.circular(30),
          //       bottomLeft: Radius.circular(30),
          //     ),
          //     child: BackdropFilter(
          //       filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          //       child: Container(
          //         height: 30,
          //         width: double.infinity,
          //         decoration: const BoxDecoration(
          //           color: Colors.transparent,
          //           borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(30),
          //             topRight: Radius.circular(30),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
